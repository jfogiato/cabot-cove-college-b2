class Course < ApplicationRecord
  validates_presence_of :name

  has_many :resident_courses
  has_many :residents, through: :resident_courses

  def self.course_with_resident_count
    Course
      .select("courses.name, COUNT(residents.id) as resident_count")
      .joins(:residents)
      .group("courses.id")
  end
end
