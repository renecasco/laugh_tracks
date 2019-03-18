class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @specials = Special.all
  end
end
