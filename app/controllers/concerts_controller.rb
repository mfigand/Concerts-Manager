class ConcertsController < ApplicationController

  def home
    @concert = Concert.all
  end

  def index
    @concert = Concert.get_today_concert
    @concertMonth = Concert.get_month_concert

  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new concert_params
    if @concert.save
      flash[:notice] = "Concert created succesfully"
      redirect_to action: :index, concert_id: @concert.id
    else
      flash[:alert] = "ALERT Concert not created"
      render 'new'
    end
  end

    def show
      @concert = Concert.find_by(id: params[:id])
      @comments_concert = @concert.comments
      @comment_new = Comment.new
    end




  private

  def concert_params
   params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
  end



end
