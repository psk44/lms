class Search

  def initialize(query, options = {})
    @query = query
    @sensei_id = options[:sensei_id]
  end

  def results
    courses = Course.where("title like '%#{@query}%'")
    if @sensei_id.present?
      courses = courses.where(sensei_id: @sensei_id)
    end
    courses
  end

end
