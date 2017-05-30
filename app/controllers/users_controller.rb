class UsersController < ApplicationController



   def index
      User.all
    end

   def new
    end

   def show
      @user = current_user
    end

   def create
        user = User.new(user_params)
        if user.save
          session[:user_id] = user.id
          redirect_to '/home'
        else
          redirect_to '/signup'
        end
    end

   def user_params
      params.require(:user).permit(:first_name,:last_name, :email, :password, :password_confirmation)
    end

   def edit
      @user = current_user
    end

   def update
      @user = current_user
    if @user.update!(user_params)
      redirect_to home_path
    else
      redirect_to account_path
    end
  end


end
