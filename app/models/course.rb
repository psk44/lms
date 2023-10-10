class Course < ApplicationRecord
  belongs_to :sensei
  has_and_belongs_to_many :students

end
