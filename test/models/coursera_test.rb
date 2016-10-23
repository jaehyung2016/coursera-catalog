require 'test_helper'

class CourseraTest < ActiveSupport::TestCase
  setup do
    @coursera = Coursera.new 2, 'ruby'
  end

  test "print query string" do
    response = @coursera.get_courses "http://localhost:3000/debug"
    puts
    puts Nokogiri::HTML(response).text
  end

  test "response" do
    elements, total = @coursera.get_courses
    puts
    pp elements[0]
    pp total
  end

  teardown do
  end
end
