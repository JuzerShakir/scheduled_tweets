class RegisterationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_param)
        if @user.save
            redirect_to root_path, notice: "Success!"
        else
            render :new
        end
    end

    private
    def user_param
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end