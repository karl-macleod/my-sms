class InstitutesController < ApplicationController
  before_filter :set_institute, only: [:show, :edit, :update]

  def index
    @institutes = Institute
    .order(:name)
    .paginate(page: params[:page], per_page: ApplicationHelper::PAGINATION_PAGE_SIZE)
  end

  private

  def set_institute
    @institute = Institute.find(params[:id])
  end
end
