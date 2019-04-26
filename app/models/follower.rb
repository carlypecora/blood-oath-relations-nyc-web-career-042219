class Follower

	attr_accessor :name, :age, :life_motto

	@@all = []

	def initialize
		@cults = []
		@@all << self
	end

	def cults
		@cults
	end

	def join_cult(cult)
		@cults << cult
	end

	def self.all 
		@@all 
	end

	def self.of_a_certain_age(age)
		self.all.select do { |follower| follower.age >= age}
	end

end