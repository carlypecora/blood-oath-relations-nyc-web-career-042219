class Cult

	attr_accessor :name, :location, :founding_year, :slogan

	@@all = []

	def initialize
		@followers = []
		@@all << self
	end

	def recruit_follower(follower)
		blood  = BlooadOath.new(follower, self)
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

	def average_age
		all_ages = 0
		@followers.each do |follower|
			all_ages += follower.age
		end
		all_ages.to_f/(@followers.length).to_f
	end

	def my_followers_mottos
		followers.each { |follower| puts follower.life_motto }
	end

	def self.least_popular
		num_of_followers = 0
		cult_instance = nil
		self.all.each do |cult|
			if cult.cult_population < num_of_followers
				cult.cult_population = num_of_followers
				cult_instance = cult
			end
		end
		cult_instance
	end

	def self.most_common_location
		all.each_with_object({}) do |cult, hash|
			if hash[cult.location].nil?
				hash[cult.location = 1]
			else
				hash[cult.location += 1]
			end
		end.max_by { | k, v | v }[0]
	end


end