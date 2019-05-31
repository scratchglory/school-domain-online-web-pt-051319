# code here!

class School
  attr_reader :roster
  
  def initialize(name)
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []     # if the key doesn't exist, set the key = to grade
    @roster[grade] << name
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
  
end