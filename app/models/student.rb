class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.select {|s|
      s == first_name
    }
  end

  #OMGGG REFACTOR THIS!!!!!!!!!!!!!!!
  #THERE HAS GOT TO BE AN EASIER WAY!!!!
  def grade_percentage
    amountoftests = 0
    passing = 0
    myTests = BoatingTest.all.select{ |pass|
      if pass.student == self
        amountoftests +=1
        if pass.test_status == "passed"
          passing+=1
        end
      end
      #binding.pry
     }
     percentage = passing.to_f/amountoftests.to_f
     return percentage.to_f
     binding.pry
  end

end
