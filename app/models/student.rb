class Student

    attr_reader :name

    @@all = []

    def initialize(first_name)
        @name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def to_s
        self.name
    end

    def add_boating_test(instructor_name, bt_name, bt_status)
        BoatingTest.new(self, instructor_name, bt_name, bt_status)
    end
        # -- HELPER --
    def find_my_tests
        BoatingTest.all.select{|stu| stu.student == self}
    end
        # ------------
        
    def all_instructors
        self.find_my_tests.map{|inst| inst.instructor.name}.uniq
    end

    def self.find_student(student_name)
        Student.all.select {|student| return student if student.name == student_name}
    end

    def grade_percentage_helper_one
        #binding.pry
       passed_tests = 0
       self.find_my_tests.select do |passed| 
            if passed.bt_status == "Passed!"
                passed_tests += 1
            else 
                passed_tests
            end
        end
       tests_all = BoatingTest.all.select{|all_tests| all_tests.student == self}.count
        (passed_tests.to_f)/(tests_all.to_f)
    end




        








end 

