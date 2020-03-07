class PersonsController < ApplicationController
  def profile
      @users = User.all
  end
end