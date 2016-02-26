1.upto(25) do |index|
  concert = Concert.create(
  artist: "Jim Morrison #{index}",
  venue: "Stadium #{index}",
  city: "Madrid #{index}",
  date: Date.today - rand(10).days,
  price: rand(24),
  description: "The last concert #{index}"
  )

end
