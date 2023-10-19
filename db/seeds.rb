# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Sensei.create({
  :first_name => "Gandalf",
  :last_name => "The Wise"
})

student_hashes = [
  {
    :first_name => "Bilbo",
    :last_name => "Baggins",
    :offset_from_roy => rand(1..10)
  },
  {
    :first_name => "Frodo",
    :last_name => "Baggins",
    :offset_from_roy => rand(1..10)
  },
  {
    :first_name => "Pippin",
    :last_name => "Took",
    :offset_from_roy => rand(1..10)
  }
]

Student.create(student_hashes)

10.times do |index|
  Course.create(
    :title => "Title #{index}",
    :description => "Description #{index}",
    :sensei => Sensei.first
  )
end

3.times do
  Student.all.each do |student|
    student.courses << Course.find(rand(1..10))
  end
end
