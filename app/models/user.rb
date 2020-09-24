class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true
    has_secure_password
end
