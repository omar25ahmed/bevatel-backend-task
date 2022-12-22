module Api
  module V1
    class StudentsController < Api::V1::BaseController
      def index
        students = Student.all
        render json: students
      end

      def show
        student = Student.find(params[:id])
        render json: student
      end

      def create
        student = Student.new(student_params)
        if student.save
          render json: student
        else
          render json: { error: student.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        student = Student.find(params[:id])
        if student.update(student_params)
          render json: student
        else
          render json: { error: student.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        student = Student.find(params[:id])
        student.destroy
        UserMailer.order.deliver_now
        render json: student
      end

      private

      def student_params
        params.require(:student).permit(:name, :school_id)
      end
    end
  end
end
