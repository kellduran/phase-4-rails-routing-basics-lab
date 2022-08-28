class StudentsController < ApplicationController
    def  index
        students = Student.all  
        render json: students
    end

    def grades
        student_grade_order = Student.all.order(:grade).reverse
        render json: student_grade_order
    end
end
