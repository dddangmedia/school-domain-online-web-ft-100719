class School
  attr_reader :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade].each{|student| puts student}
  end
  
  def sort 
  nu_hash = {}
  roster.each do |x, y| 
      nu_hash[x] = y.sort 
    end 
    nu_hash
  end
end