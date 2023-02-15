class User < ApplicationRecord
    has_many :items
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
