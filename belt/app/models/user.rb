class User < ApplicationRecord
    has_many :playlists
    has_many :songs, through: :playlists

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    has_secure_password
    validates :password_confirmation, presence: true, :on => :create
    before_save :email_lowercase

    def email_lowercase
      email.downcase!
    end
end
