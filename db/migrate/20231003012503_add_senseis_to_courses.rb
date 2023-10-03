class AddSenseisToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :senseis, foreign_key: true
  end
end
