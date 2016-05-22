#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#
#	def self.yelling_happily(words)
#		words + "!!!" + " :)"
#	end
#end

#p Shout.yell_angrily("Go away")
#p Shout.yelling_happily("Hello")

module Shout
	def yell(words)
		puts words.upcase + "!!!"
	end
end

class Golfer
	include Shout
end

class Announcer
	include Shout
end

golfer = Golfer.new
golfer.yell("fore")

announcer = Announcer.new
announcer.yell("touchdown")