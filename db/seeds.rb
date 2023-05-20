Resident.delete_all
Course.delete_all
ResidentCourse.delete_all

residents_data = [
  { name: "John Doe", age: 30, occupation: "Engineer" },
  { name: "Jane Smith", age: 25, occupation: "Designer" },
  { name: "Michael Johnson", age: 35, occupation: "Doctor" },
]

residents_data.each do |resident_attributes|
  Resident.create!(resident_attributes)
end

puts "Seed data for residents created successfully."

course_names = [
  "Introduction to Ruby",
  "Web Development Fundamentals",
  "Database Design",
  "Object-Oriented Programming",
  "Ruby on Rails Basics",
]

course_names.each do |name|
  Course.create!(name: name)
end

puts "Seed data for courses created successfully."

resident_course_associations = [
  { resident_id: 1, course_id: 1 },
  { resident_id: 1, course_id: 2 },
  { resident_id: 1, course_id: 2 },
  { resident_id: 1, course_id: 3 },
  { resident_id: 1, course_id: 5 },
  { resident_id: 2, course_id: 1 },
  { resident_id: 2, course_id: 3 },
  { resident_id: 2, course_id: 4 },
  { resident_id: 2, course_id: 2 },
  { resident_id: 2, course_id: 3 },
  { resident_id: 3, course_id: 5 },
  { resident_id: 3, course_id: 4 },
  { resident_id: 3, course_id: 2 },
  { resident_id: 3, course_id: 1 },
  { resident_id: 3, course_id: 5 },
  { resident_id: 3, course_id: 4 },
  { resident_id: 3, course_id: 2 },
  { resident_id: 3, course_id: 1 },
]

resident_course_associations.each do |association|
  ResidentCourse.create!(association)
end

puts "Seed data for resident_courses created successfully."
