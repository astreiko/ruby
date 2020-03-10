class PersonsController < ApplicationController
  def profile
      @users = User.all
      @stickies = Sticky.all
  end
end