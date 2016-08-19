class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :days
  has_many :meals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # could add a helper method here to determine average calorie consumption per meal and day, respectively
end
