class CoursesController < ApplicationController
  def index
    @courses = Course.course_with_resident_count
  end
end