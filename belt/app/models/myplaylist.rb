class Myplaylist < ApplicationRecord
  belongs_to :user
  has_many :songs, through: :playlists
end
