class Show < ActiveRecord::Base

	def self.highest_rating
	# returns the TV show with the highest rating
		self.all.map{|show| show.rating}.max
	end

	def self.most_popular_show
		# returns the TV show with the highest rating
		self.all.find{|show| show.rating == Show.highest_rating}
	end

	def self.lowest_rating
		# returns the TV show with the lowest rating
		self.all.map{|show| show.rating}.min
	end

	def self.least_popular_show
		# returns the TV show with the lowest rating
		self.all.find{|show| show.rating == Show.lowest_rating}
	end

	def self.ratings_sum
		# returns the sum of all the ratings of all the tv shows
		self.all.map{|show| show.rating}.sum
	end

	def self.popular_shows
		# returns an array of all of the shows with a rating above 5
		self.all.select{|show| show.rating > 5}
	end

	def self.shows_by_alphabetical_order
	 # returns an array of all of the shows, listed in alphabetical order
	 	self.all.map do |show|
	 		show
	 	end.sort_by{|show| show.name}
	end
end