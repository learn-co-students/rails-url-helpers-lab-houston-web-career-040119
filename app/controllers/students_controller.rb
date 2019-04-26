class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show

  end

  def active
    @student = set_student
    @student.active ? @student.update(active: false) : @student.update(active: true)
    redirect_back fallback_location: { action: "show", id: @student.id }
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end