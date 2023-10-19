# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

sensei = Sensei.create({
  :first_name => "Gandalf",
  :last_name => "The Wise"
})

student_hashes = [
  {
    :first_name => "Bilbo",
    :last_name => "Baggins"
  },
  {
    :first_name => "Frodo",
    :last_name => "Baggins"
  },
  {
    :first_name => "Pippin",
    :last_name => "Took"
  }
]

Student.create(student_hashes)
10.times do |index|
  course = Course.create(
    :title => "Title #{index}",
    :description => "Description #{index}",
    :sensei => sensei
  )

  course.students << Student.find(rand(1..3))
end
