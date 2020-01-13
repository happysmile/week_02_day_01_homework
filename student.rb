class Student

  # attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  # getter methods

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  # setter methods

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  # functions

  def say_something()
    return "Hello world!"
  end

  def say_favourite_language(favourite_language)
    return "I love #{favourite_language}!"
  end

end
