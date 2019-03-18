class Special < ApplicationRecord
  validates_presence_of :name
  validates :run_time, presence: true, numericality: {
    only_integer: true, :greater_than_or_equal_to => 0
  }
  validates_presence_of :thumbnail

  belongs_to :comedian

  def self.average_length
    Special.average(:run_time).round(2)
  end
end
