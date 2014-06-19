class LifeEvent < ActiveRecord::Base
  validates :event_name, presence: true
  validates :date_of_event, presence: true
  validates :description, presence: true,
                          length: { maximum: 140 }
end
