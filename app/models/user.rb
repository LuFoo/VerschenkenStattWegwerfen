class User < ApplicationRecord
#include ActiveModel::Validations

 # validates :password, password_strength: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
end
