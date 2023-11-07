class Course < ApplicationRecord
  belongs_to :sensei, :optional => true
  has_and_belongs_to_many :students

end
