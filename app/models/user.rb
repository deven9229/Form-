class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable

  has_many :discussions, dependent: :destroy
  has_many :channels, through: :discussions 
end
