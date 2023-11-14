class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :courses
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def full_name
    first_name + " " + last_name
  end
end
