class StudentsController < ApplicationController
  def index
    @students = Student
      .order(:last_name)
      .paginate(page: params[:page], per_page: 10)
  end
end
