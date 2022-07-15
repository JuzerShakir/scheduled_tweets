class PasswordResetController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            # send an email
            PasswordMailer.with(user: @user).reset.deliver_now
        end

        redirect_to root_path, notice: "We have sent an email if the account exists."
    end

    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to log_in_path, alert: "Your Token has expired."
    end

    def update
        @user = User.find_signed(params[:token], purpose: "password_reset")
        if @user.update(reset_password_parans)
            redirect_to log_in_path, notice: "Your password was reset successfully. Please Sign In."
        else
            render :edit
        end
    end

    private
    def reset_password_parans
        params.require(:user).permit(:password, :password_confirmation)
    end
end