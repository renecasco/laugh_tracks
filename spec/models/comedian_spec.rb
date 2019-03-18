RSpec.describe Comedian, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :city}
  end

  describe 'relationships' do
    it {should have_many :specials}
  end

  describe 'class methods' do

  end

  describe 'instance methods' do
    it 'should calculate average age for all comedians' do
      richard_pryor = Comedian.create(name: "Richard Pryor", age: 65, city: "Los Angeles, CA")
      george_carlin = Comedian.create(name: "George Carlin", age: 71, city: "Santa Monica, CA")

      expect(Comedian.average_age).to eq(68)
    end
  end
end
