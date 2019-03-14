require 'rails_helper'

describe "When a user visits '/comedians'" do
  it "lets them see a list of comedians with their name, age and city" do
    richard_pryor = Comedian.create(name: "Richard Pryor", age: 65, city: "Los Angeles, CA")
    george_carlin = Comedian.create(name: "George Carlin", age: 71, city: "Santa Monica, CA")

    visit comedians_path

    within "#comedian-#{richard_pryor.id}" do
      expect(page).to have_content(richard_pryor.name)
      expect(page).to have_content(richard_pryor.age)
      expect(page).to have_content(richard_pryor.city)
    end
    within "#comedian-#{george_carlin.id}" do
      expect(page).to have_content(george_carlin.name)
      expect(page).to have_content(george_carlin.age)
      expect(page).to have_content(george_carlin.city)
    end
  end
end
