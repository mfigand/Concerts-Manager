class Concert < ActiveRecord::Base

  validates :artist, :venue, :city, :date, :price, :description, presence: true
end
