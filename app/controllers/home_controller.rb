class HomeController < ApplicationController
  caches_page :index
  def index
    @prizes = []
    (1..4).each do |rank|
      @prizes[rank] = Prize.find_all_by_rank(rank)
    end
  end
end
