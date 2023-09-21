class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :offset_from_roy
      t.boolean :in_syria
      t.boolean :dr_e_watching

      t.timestamps
    end
  end
end
