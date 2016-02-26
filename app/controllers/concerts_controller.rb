class ConcertsController < ApplicationController

  def index
    @concert = Concert.all

  end

  def new
    @concert = Concert.new

  end

  def create
    @concert = Concert.new entry_params
    if @concert.save
      flash[:notice] = "Concert created succesfully"
      redirect_to action: :index, concert_id: @concert.id
    else
      flash[:alert] = "ALERT Concert not created"
      render 'new'
    end

  end

  private

  def entry_params
   params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
  end



end
