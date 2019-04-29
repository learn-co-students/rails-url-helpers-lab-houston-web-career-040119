class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    #line above
  #Should mark an inactive student as active 
  #Should mark an active student as inactive
    @student.save
    redirect_to student_path(@student)#?????
  #should redirect to the student show page
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
