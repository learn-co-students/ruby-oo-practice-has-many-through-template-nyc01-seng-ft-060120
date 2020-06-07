class Classroom
  @@all = []
  attr_accessor :teacher, :subject
  attr_reader :students

  def initialize(teacher, students, room_number, subject)
    @teacher = teacher
    @students = students
    @room_number = room_number
    @subject = subject

    @@all << self
  end

  def remove_student(student_name, id)
    student = @students.find do |student|
      student.full_name == student_name and student.id == id
    end
    if !student
      puts "Student #{student_name} with id #{id} was not found!"
    else
      @students.delete(student)
      puts "Student #{student_name} id #{id} was removed from classroom."
    end
  end

  def add_student(student)
    @students.push(student)
    puts "New student #{student.full_name} was added to classroom #{@room_number}"
  end

  def swap_teacher(new_teacher)
    puts "#{@teacher.full_name} will be replaced with #{new_teacher.full_name}"
    @teacher = new_teacher
    puts "Substitute Teacher #{new_teacher.full_name} took over room #{@room_number}."
  end

  def self.all
    @@all
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 66074a9aeaa5d9a4672fa20333055fca3ab6f47f
