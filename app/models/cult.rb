class Cult

	attr_accessor :name, :location, :founding_year, :slogan

	@@all = []

	def initialize
		@followers = []
		@@all << self
	end

	def recruit_follower(follower)
		@followers << follower
	end

	def cult_population
		@followers.length
	end

	def self.all
		@@all 
	end

	def self.find_by_name(name)
		self.all.find { |cult| cult.name == name}
	end

	def self.find_by_founding_year(year)
		self.all.select { |cult| cult.founding_year == year}
	end
end