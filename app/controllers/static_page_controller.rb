class StaticPageController < ApplicationController
  def home
    @movies = Movie.all
  end
end
