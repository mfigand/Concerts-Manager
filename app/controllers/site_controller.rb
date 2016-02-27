class SiteController < ApplicationController

  def home
    @concert = Concert.all
  end
  
end
