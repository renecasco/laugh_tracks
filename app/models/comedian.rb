class Comedian < ApplicationRecord
  validates_presence_of :name, :city
  validates :age, presence: true, numericality: {
    only_integer: true,
  }

  has_many :specials

  def self.average_age
    Comedian.average(:age).round(0).to_i
  end

  def self.cities
    Comedian.distinct.pluck(:city)
  end

end
