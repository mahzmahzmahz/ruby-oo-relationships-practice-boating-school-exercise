class BoatingTest

    attr_reader :student, :instructor
    attr_accessor :bt_name, :bt_status

    @@all = []

    def initialize(student_name, instructor_name, bt_name, bt_status)
        @student = student_name
        @instructor = instructor_name
        @bt_name = bt_name
        @bt_status = bt_status
        @@all << self
    end

    def self.all
        @@all
    end







end
