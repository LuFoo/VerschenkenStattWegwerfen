class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable, :rememberable, :trackable
end
