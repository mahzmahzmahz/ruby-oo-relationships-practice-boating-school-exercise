class Instructor
     attr_reader :name

     @@all = []

     def initialize(instructor_name)
        @name = instructor_name
        @@all << self
     end

     def self.all
        @@all
     end

    def find_my_tests
        BoatingTest.all.select{|inst| inst.instructor == self}
    end
 
    def all_students
        self.find_my_tests.map{|test| test.student}
    end

    def all_passed_tests
        self.find_my_tests.select{|test| test.bt_status == "Passed!" }
    end

    def passed_student
        #binding.pry
        self.find_my_tests.select{|stu| return stu.student.name if stu.bt_status == "Passed!"}
    end

    def student_finder(student_name)
        Student.all.find{|student| student.name == student_name}
    end

    def test_finder(test_name)
        BoatingTest.all.find{|test| test.bt_name == test_name}
    end


    def pass_student(student_name, test_name)
        test = test_finder(test_name)

        if test && test.student.name == student_name
            test.bt_status = "Passed!"
            test
        else
            student = student_finder(student_name)
            BoatingTest.new(student_name, self, test_name, "Passed!")
        end
    end

    def fail_student(student_name, test_name)
        test = test_finder(test_name)

        if test && test.student.name == student_name
            test.bt_status = "Not Passed"
            test
        else
            student = student_finder(student_name)
            BoatingTest.new(student_name, self, test_name, "Not Passed")
        end
    end 


    #     BoatingTest.all.map! do |test|
    #         puts "loop"
    #         puts BoatingTest.all
    #         boating_test_array = [].uniq
    #         if test.student == student_name && test.bt_name == input_test
    #             test.bt_status = "Passed!" 
    #         else 
    #             boating_test_array << BoatingTest.new(student_name, self.name, input_test, "Passed!") 
    #         end
    #     end
    # end



end
