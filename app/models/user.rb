class User < ApplicationRecord
    has_many :todos
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true
    has_secure_password
end
