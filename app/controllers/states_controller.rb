class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def search
    search_term = "%#{params[:search_term].downcase}%"
    @states = State.where("lower(abbreviation) like ? OR lower(name) like ?", search_term, search_term)
    render json: {states: @states}
  end
end
