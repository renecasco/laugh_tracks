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

  it "lets them see a list of each comedian's TV specials' names, run time, and thumnail" do
    richard_pryor = Comedian.create(name: "Richard Pryor", age: 65, city: "Los Angeles, CA")

    special_1 = richard_pryor.specials.create(name: "Live and Smokin'", run_time: 48, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkyMDI1OTc2N15BMl5BanBnXkFtZTcwNzgzODEyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    special_2 = richard_pryor.specials.create(name: "Live in Concert", run_time: 78, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NDkwMzYwNF5BMl5BanBnXkFtZTYwNTMzMTQ5._V1_UY268_CR2,0,182,268_AL_.jpg")

    visit comedians_path

    within "#comedian-#{richard_pryor.id}" do
      expect(page).to have_content(special_1.name)
      expect(page).to have_content("Length: #{special_1.run_time} min")
      expect(page).to have_xpath("//img[contains(@src,'#{File.basename(special_1.thumbnail)}')]")
      expect(page).to have_content(special_2.name)
      expect(page).to have_content("Length: #{special_1.run_time} min")
      expect(page).to have_xpath("//img[contains(@src,'#{File.basename(special_2.thumbnail)}')]")
    end
  end

  describe "they see an area at the top of the page called 'Statistics'" do
    it "they see the average age of all comedians on the page" do
      richard_pryor = Comedian.create(name: "Richard Pryor", age: 65, city: "Los Angeles, CA")
      george_carlin = Comedian.create(name: "George Carlin", age: 71, city: "Santa Monica, CA")

      visit comedians_path

      within "#statistics" do
        expect(page).to have_content("Average Comedian Age: 68 yrs old")
      end
    end

    it "they see the average run time of all the specials on the page" do
      richard_pryor = Comedian.create(name: "Richard Pryor", age: 65, city: "Los Angeles, CA")

      special_1 = richard_pryor.specials.create(name: "Live and Smokin'", run_time: 48, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkyMDI1OTc2N15BMl5BanBnXkFtZTcwNzgzODEyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
      special_2 = richard_pryor.specials.create(name: "Live in Concert", run_time: 78, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NDkwMzYwNF5BMl5BanBnXkFtZTYwNTMzMTQ5._V1_UY268_CR2,0,182,268_AL_.jpg")

      visit comedians_path

      within "#statistics" do
        expect(page).to have_content("Average Length for Specials: 63.0 min")
      end
    end
  end

end
