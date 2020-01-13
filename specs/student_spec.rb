require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test


def setup()
  @student = Student.new("Mark", "G99")
end

# test getters

def test_student_name()
  assert_equal("Mark", @student.name())
end

def test_student_cohort()
  assert_equal("G99", @student.cohort())
end

# test setters

def test_set_student_name()
  assert_equal("Francesca", @student.set_name("Francesca"))
end

def test_set_student_cohort()
  assert_equal("G80", @student.set_cohort("G80"))
end

def test_say_something()
  assert_equal("Hello world!", @student.say_something())
end

def test_say_favourite_language()
  assert_equal("I love JavaScript!", @student.say_favourite_language("JavaScript"))
end


end
