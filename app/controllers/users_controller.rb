class UsersController < ApplicationController

  def update
    user = User.find(params[:user_id])
    user.map{|r| 
      if r.active?
        r.update!(active: 'false')  
      else
        r.update!(active: 'true')
      end
      r        
    }
      if current_user.active?
        redirect_to user_root_path  
      else
        sign_out(current_user)
        redirect_to root_path
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

      if user_signed_in?
        redirect_to user_root_path
      else
        redirect_to root_path
      end

  end

end
