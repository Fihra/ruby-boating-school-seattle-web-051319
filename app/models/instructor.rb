class Instructor
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    passingStudent = BoatingTest.all.select {|boat|
      if boat.student == student && boat.test_name == test_name
        boat.test_status = "passed"
      end

    }
    #binding.pry
    if !passingStudent.any?
        passingStudent = BoatingTest.new(student, test_name, "passed", self)
      end

    #binding.pry
      return passingStudent
  end

  def fail_student(student, test_name)
    failingStudent = BoatingTest.all.select {|boat|
      if boat.student == student && boat.test_name == test_name
        boat.test_status = "failed"
      end

    }
    #binding.pry
    if !failingStudent.any?
        failingStudent = BoatingTest.new(student, test_name, "failed", self)
      end

    #binding.pry
      return failingStudent
  end
end
