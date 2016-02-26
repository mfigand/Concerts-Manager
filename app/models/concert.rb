class Concert < ActiveRecord::Base

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
end
