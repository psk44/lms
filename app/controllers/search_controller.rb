class SearchController < ApplicationController
  def index
    @query = params[:query]

    @courses = Course.where("title like '%#{@query}%'")
  end
end
