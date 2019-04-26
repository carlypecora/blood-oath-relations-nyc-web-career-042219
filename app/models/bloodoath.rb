class BloodOath

	attr_reader :time

	@@all = []

	def initialize
		@time = Time.now.strftime("%Y-%m-%d")
		@@all << self
	end


end