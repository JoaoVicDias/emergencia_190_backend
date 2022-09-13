class User < ApplicationRecord    
    has_many :emergency

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, :length => { :minimum => 8 }, :on => :create

    has_secure_password
end
