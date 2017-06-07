class SessionsController < ApplicationController
    def new
        @user = User.find_by_email(params[:email])
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to "/users/#{@user.id}"
            else
                flash["logerrors"] = ["Invalid Combination"]
                redirect_to "/"
            end
      end
      def destroy
          reset_session
          redirect_to "/"
      end
end
