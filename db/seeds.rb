# Clear existing data in the "residents" table
Resident.delete_all

# Define an array of residents with their attributes
residents_data = [
  { name: "John Doe", age: 30, occupation: "Engineer" },
  { name: "Jane Smith", age: 25, occupation: "Designer" },
  { name: "Michael Johnson", age: 35, occupation: "Doctor" },
]

# Create residents using the data defined above
residents_data.each do |resident_attributes|
  Resident.create!(resident_attributes)
end

puts "Seed data for residents created successfully."
