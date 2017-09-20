class StudentsController < ApplicationController

  def index
  	@students = Student.all
  end

  def new
   @student = Student.new
  end

  def create
  	@student = Student.new(params.require(:student).permit(:name, :age, :lastname))
    if @student.save
     redirect_to root_path
     else
     render "new"
    end
  end

end
