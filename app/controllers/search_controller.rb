class SearchController < ApplicationController
  def index
    @query = params[:query]
    @sensei_id = params[:sensei_id]

    @courses = Course.where("title like '%#{@query}%'").where(sensei_id: @sensei_id)
  end
end
