class StudentsController < ApplicationController
  def index
    @students = Student
      .order(:last_name)
      .paginate(page: params[:page])
  end
end
