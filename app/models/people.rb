class People < ActiveRecord::Base
  validates :first_name, presence: true, length: { minimum: 1, maximum: 30 }
  validates :middle_initial, length: { minimum: 1, maximum: 2 }, allow_blank: true
  validates :last_name, presence: true, length: { minimum: 1, maximum: 50 }
end
