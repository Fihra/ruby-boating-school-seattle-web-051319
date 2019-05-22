require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

spongebob.add_boating_test("Don't Crash", "pending", puff)
spongebob.add_boating_test("Written", "passed", puff)
#spongebob.add_boating_test("Steering", "failed", puff)
patrick.add_boating_test("Don't Crash", "passed", krabs)
patrick.add_boating_test("Written", "failed", puff)
patrick.add_boating_test("Steering", "passed", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
