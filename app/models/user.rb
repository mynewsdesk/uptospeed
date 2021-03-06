class User < ActiveRecord::Base
  has_many :events, :through => :attendances
  has_many :attendances
  has_many :workouts
  has_many :learnings

  belongs_to :office

  validates :email, :presence => true, :uniqueness => true

  def name
    "#{first_name} #{last_name}"
  end

  def events_learnings_and_workouts_this_month
    (workouts.this_month + learnings.this_month + events.past_this_month).reverse
  end

  def all_events_learnings_and_workouts
    { "Workouts" => workouts.count, "Learnings" => learnings.count, "Events" => events.count }
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.email = auth["info"]["email"]
      user.provider = auth["provider"]
      user.uid = auth["uid"]
    end
  end

end
