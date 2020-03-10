class StickiesController < ApplicationController
  def create
    @user = current_user
    @sticky = @user.stickies.create(sticky_params)
  end

  def destroy
    Sticky.where(sticky_id: params[:id]).destroy_all
  end

  private
    def sticky_params
      params.require(:sticky).permit(:sticky_id, :text)
    end

end
