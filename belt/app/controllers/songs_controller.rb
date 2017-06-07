class SongsController < ApplicationController
    def create
        @song = Song.create(title:params[:title], artist:params[:artist])
        @user = User.find(session[:user_id])
        if @song.save
            @songs = Song.all
            redirect_to "/users/#{@user.id}"
        else
            flash["errors"] = @song.errors.full_messages
            redirect_to "/users/#{@user.id}"
        end
    end

    def show
        @song = Song.find(params[:id])
        @lists = @song.playlists

        @user = User.find(session[:user_id])


    end
end
