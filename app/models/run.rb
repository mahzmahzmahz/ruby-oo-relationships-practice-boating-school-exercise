require 'pry'
require 'require_all'

require_all 'app/models'



#STUDENTS
student1 = Student.new("Spongebob")
student2 = Student.new("Patrick")



#INSTRUCTORS
instructor1 = Instructor.new("Mrs. Puff")
instructor2 = Instructor.new("Plankton")
instructor3 = Instructor.new("Pearl")


#BOATING TESTS
boatingtest1 = BoatingTest.new(student1, instructor1, "The FUN Test", "Not Passed")
boatingtest2 = BoatingTest.new(student2, instructor2, "The LOONEY Test", "Passed!")
boatingtest3 = BoatingTest.new(student1, instructor3, "The Other Test", "Passed!")
boatingtest4 = BoatingTest.new(student2, instructor3, "The FUN Test", "Passed!")


binding.pry
0

