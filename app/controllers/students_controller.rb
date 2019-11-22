class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.new
  end
  
  def create
    # Failure/Error: @student = Student.create(params)
    
    #  ActiveModel::ForbiddenAttributesError:
    #    ActiveModel::ForbiddenAttributesError
    # @student = Student.create(params)
    
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # byebug
    redirect_to student_path(@student)
  end

end
