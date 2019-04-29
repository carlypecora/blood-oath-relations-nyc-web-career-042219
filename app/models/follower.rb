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
		blood  = BlooadOath.new(self, cult)
		@cults << cult
	end

	def self.all 
		@@all 
	end

	def self.of_a_certain_age(age)
		self.all.select do { |follower| follower.age >= age}
	end

	def my_cults_slogans
		@cults.map do |cult|
			cult.slogan 
		end
	end

	def self.most_active
		all.max_by { |follower| follower.cults.length }
	end

	def self.top_ten
		most_active.sort_by { |follower| follower.cults.length }.reverse.take(10)
	end

end