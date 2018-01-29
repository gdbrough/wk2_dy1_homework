require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test
  def test_returns_student_name()
    student = Student.new("Graeme", "G4")
    assert_equal("Graeme", student.name())
  end

  def test_returns_student_cohort()
    student = Student.new("Graeme", "G4")
    assert_equal("G4", student.cohort())
  end

  def test_set_student_name()
    student = Student.new("Graeme", "G4")
    student.name = ("Steve")
    assert_equal("Steve", student.name())
  end

  def test_set_student_cohort()
    student = Student.new("Graeme", "G4")
    student.cohort = ("E19")
    assert_equal("E19", student.cohort())
  end

  def test_student_can_talk()
    student = Student.new("Graeme", "G4")
    assert_equal("Hello", student.can_talk("Hello"))
  end
  
  def test_students_favourite_language
    student = Student.new("Graeme", "G4")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end


end
