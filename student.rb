class Student

  attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def say_something()
    return "Hello world!"
  end

  def say_favourite_language(favourite_language)
    return "I love #{favourite_language}!"
  end

end
