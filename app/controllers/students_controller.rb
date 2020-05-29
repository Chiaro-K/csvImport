class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def import
    Student.import(params[:file])
    redirect_to root_url, notice: "Success: Student Data imported!"
  end
end
