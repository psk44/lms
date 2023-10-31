class SearchController < ApplicationController
  def index
    @query = params[:query]
    @sensei_id = params[:sensei_id]

    @search = Search.new(@query, :sensei_id => @sensei_id)
    @courses = @search.results
  end
end
