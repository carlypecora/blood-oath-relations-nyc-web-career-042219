require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
lindsey = Follower.new
lindsey.name = "Lindsey"
lindsey.age = 19
lindsey.life_motto = "lolol"

cannibals = Cult.new
cannibals.name = "Cannibals"
cannibals.location = "Pennsylvania"
cannibals.founding_year = 1879
cannibals.slogan = "we eat ppl"

dancers = Cult.new
dancers.name = "Dancers"
dancers.location = "Pennsylvania"
dancers.founding_year = 1879
dancers.slogan = "we eat ppl"


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
