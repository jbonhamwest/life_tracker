class School < ActiveRecord::Base
  validates :year_started, presence: true, numericality:
      { only_integer: true,
        less_than_or_equal_to: :year_ended }
  validates :year_ended, presence: true, numericality: { only_integer: true }
  validates :school_name, presence: true
end
