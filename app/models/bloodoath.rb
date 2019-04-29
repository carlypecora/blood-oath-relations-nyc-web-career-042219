class BloodOath

	attr_reader :time, :follower, :cult

	@@all = []

	def initialize(follower, cult)
		@time = Time.now.strftime("%Y-%m-%d")
		@@all << self
	end

	def self.first_oath
		all.first.follower
	end

end