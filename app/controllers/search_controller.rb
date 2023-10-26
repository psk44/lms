class SearchController < ApplicationController
  def index
    @query = params[:query]
    @sensei_id = params[:sensei_id]

    if @sensei_id.present?
      @courses = Course.where("title like '%#{@query}%'").where(sensei_id: @sensei_id)
    else
      @courses = Course.where("title like '%#{@query}%'")
    end
  end
end
