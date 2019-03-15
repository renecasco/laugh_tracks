class Comedian < ApplicationRecord
  validates_presence_of :name, :city
  validates :age, presence: true, numericality: {
    only_integer: true,
  }

  has_many :specials
end
