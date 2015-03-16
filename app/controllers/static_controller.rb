class StaticController < ApplicationController
  def home
  end

  def cats
    @cats = CatAPI.new.get(results_per_page: params[:number_of_cats] || 1)
  end

  def about
  end
end
