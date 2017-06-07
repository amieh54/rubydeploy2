class PlaylistsController < ApplicationController
    def create
        @count = 0
        @playlist = Playlist.create(user_id:session[:user_id], song_id:params[:song_id])
        @user = User.find(session[:user_id])
        @songs = @user.songs
        redirect_to "/users/#{@user.id}"
    end
end
