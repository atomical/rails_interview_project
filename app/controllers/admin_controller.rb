class AdminController < ApplicationController

  def index
    @listings = Listing.where(active: true)
  end
end
