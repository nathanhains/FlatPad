class User < ApplicationRecord
    has_many :notes, dependent: :destroy
    validates :username, uniqueness: true, presence: true
    has_secure_password
end
