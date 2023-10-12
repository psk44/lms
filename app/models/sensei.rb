class Sensei < ApplicationRecord
  has_many :courses
  has_many :students, :through => :courses

  def full_name
    first_name + " " + last_name
  end
end
