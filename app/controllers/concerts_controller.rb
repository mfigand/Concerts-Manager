class ConcertsController < ApplicationController

  def index
    @concert = Concert.all

  end



end
