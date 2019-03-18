class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @specials = Special.all
    @average_age = Comedian.average_age
    @average_run_time = Special.average_length
  end
end
