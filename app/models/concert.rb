class Concert < ActiveRecord::Base

  has_many :comments

  validates :artist, :venue, :city, :date, :price, :description, presence: true

  def self.get_today_concert
    from = Time.now.midnight
    to = Time.now.midnight + 1.day
    Concert.where(date: from..to)
  end

  def self.get_month_concert
    from = Time.now.midnight
    end_month = Time.now.end_of_month
    Concert.where(date: from..end_month)
  end

  def self.search_by_price(price)
    @future_concerts = Concert.where('date >= ?', Time.now)
    @future_concerts.where('price <= ?', price.to_i)
  end

  def self.get_most_commented
    @all_comments= Comment.all
    @all_comments.group(:concert_id).count.sort_by{|k,v| v}.reverse[0..9]
  end

end
