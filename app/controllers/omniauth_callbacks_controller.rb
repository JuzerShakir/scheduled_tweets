class OmniauthCallbacksController < ApplicationController
    def twitter
        # * outputs the hash returned from twitter
        # Rails.logger.info auth

        # * creates new records or update an existing one
        #  ? 'first_or_initialize' will load if the user exists in db else it initializes a new one
        twitter_user = Current.user.twitter_accounts.where(username: auth.info.nickname).first_or_initialize

        twitter_user.update(
            name: auth.info.name,
            username: auth.info.nickname,
            image: auth.info.image,
            token: auth.credentials.token,
            secret: auth.credentials.secrets,
        )
        redirect_to root_path, notice: "Successfully connected twitter account!"
    end

    # Hash returned from twitter
    def auth
        request.env["omniauth.auth"]
    end
end