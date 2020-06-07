require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

<<<<<<< HEAD
john_doe = Teacher.new("John Doe", 9)
tommy_jr = Student.new("Tommy Jr", 9, 1923)
tommy_jr2 = Student.new("Tommy Jr2", 9, 9462)
tommy_jr3 = Student.new("Tommy Jr3", 9, 5104)
math_class =  Classroom.new(john_doe, [tommy_jr, tommy_jr2, tommy_jr3], "404", "math")


math_class.remove_student("Tommy Jr", 1923)
math_class.swap_teacher(john_doe)
math_class.add_student(Student.new("Bobby Buns", 9, 2941))
=======
>>>>>>> 66074a9aeaa5d9a4672fa20333055fca3ab6f47f

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
