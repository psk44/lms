class Sensei < ApplicationRecord
  has_many :courses
  has_many :students, :through => :courses

  def full_name
    first_name + " " + last_name
  end

  def max_student_count
    1
  end

  def compliant?
    students.count <= max_student_count
  end
end
