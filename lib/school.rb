class School

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    attr_reader :roster

    def add_student(student_name, grade)
        
        if @roster.keys.include?(grade)
            @roster[grade].push(student_name)
        else
            @roster[grade] = [student_name]
        end

    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        
        sorted_students = {}
        sorted_grades = @roster.keys.sort
        
        sorted_grades.each do |grade|

            sorted_students[grade] = @roster[grade].sort

        end

        sorted_students

    end


end