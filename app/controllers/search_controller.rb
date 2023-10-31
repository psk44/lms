class SearchController < ApplicationController
  def index
    @query = params[:query]
    @sensei_id = params[:sensei_id]

    @search = Search.new(@query)
    @courses = @search.results

    if @sensei_id.present?
      @courses = @courses.where(sensei_id: @sensei_id)
    end
  end
end
