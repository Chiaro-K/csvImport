class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def import
    records = Student.import(params[:file])
    redirect_to root_url, notice: "Student Data imported: #{records}"
  end
end
