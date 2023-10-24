class SearchController < ApplicationController
  def index
    @query = params[:query]

    @courses = Course.where(title: @query)
  end
end
