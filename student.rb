class Student
  attr_reader :name, :cohort
  attr_writer :name, :cohort

  def initialize(student_name, student_cohort)
    @name = student_name
    @cohort = student_cohort
  end

  def can_talk(string)
    return string
  end

  def say_favourite_language(input_programming_language)
    return "I love #{input_programming_language}"
  end
end
