class PagesController < ApplicationController

  def index
    @homepages = Homepage.all
  end

  def cave
    @caves = Cave.all
  end

  def place
    @places = Place.all
  end

  def island
    @islands = Island.all
  end
end
