class SessionsController < ApplicationController
 include SessionsHelper

    def new   
    end

    def create
      user = User.find_by(name: params[:sessions][:name])
      if user
        log_in(user)
        redirect_to user_path(user)
      else
        render "new"
      end
    end

    def destroy
        @current_user = nil
        session[:user_id] = nil
    end
end
