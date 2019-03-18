require 'rails_helper'

RSpec.describe Special, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :run_time}
    it {should validate_presence_of :thumbnail}
  end

  describe 'relationships' do
    it {should belong_to :comedian}
  end

  describe 'class methods' do
    it 'should calculate the average run time of all specials' do
      richard_pryor = Comedian.create(name: "Richard Pryor", age: 65, city: "Los Angeles, CA")

      special_1 = richard_pryor.specials.create(name: "Live and Smokin'", run_time: 48, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkyMDI1OTc2N15BMl5BanBnXkFtZTcwNzgzODEyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
      special_2 = richard_pryor.specials.create(name: "Live in Concert", run_time: 78, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NDkwMzYwNF5BMl5BanBnXkFtZTYwNTMzMTQ5._V1_UY268_CR2,0,182,268_AL_.jpg")
  
      expect(Special.average_length).to eq(63.0)
    end
  end
end
