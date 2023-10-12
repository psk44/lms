class DashboardController < ApplicationController
  def index
    @senseis = Sensei.all
  end
end
