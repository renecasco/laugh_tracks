class Special < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :run_time
  validates_presence_of :thumbnail

  belongs_to :comedian

  def self.average_length
    Special.average(:run_time)
  end
end
