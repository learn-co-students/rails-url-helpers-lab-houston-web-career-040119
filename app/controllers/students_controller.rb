
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @id = params[:id]
    @student = Student.find(@id)
    @student.active = !@student.active
    @student.save
    redirect_to "/students/#{@id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end