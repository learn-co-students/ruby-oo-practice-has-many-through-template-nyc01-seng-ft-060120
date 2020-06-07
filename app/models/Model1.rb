class Student
  attr_reader :full_name, :grade, :id
  @@all = []

  def initialize(full_name, grade, id)
    @full_name = full_name
    @grade = grade
    @id = id
    @@all << self
  end

  def self.all
    @@all
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 66074a9aeaa5d9a4672fa20333055fca3ab6f47f
