class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def full_name
    first_name + " " + last_name
  end
end
