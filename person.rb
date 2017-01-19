class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}."
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

#########################################

chris = Instructor.new("Chris")
chris.greeting

cristina = Student.new("Cristina")
cristina.greeting

chris.teach
cristina.learn

chris.learn # undefined method 'learn'
cristina.teach # undefined method 'teach'

# This fails because we are attempting to call a method that is not defined in the class to which the instance belongs.
