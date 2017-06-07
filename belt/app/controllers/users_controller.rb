class UsersController < ApplicationController
    def index

    end

    def create
        @user = User.new user_params
        @songs = Song.all
        if @user.save
            session[:user_id] = @user.id
            redirect_to "/users/#{@user.id}"
        else
         flash['errors'] = @user.errors.full_messages
         redirect_to '/'
     end

    end
    def show
        @songs = Song.all()
        @user = User.find(session[:user_id])
    end

    def list
        @user = User.find(params[:id])
        @list = @user.songs
        @added = @user.playlists
    end
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
