class Movie < ActiveRecord::Base
	def flop
       totall_gross.blank? || totall_gross < 50000000
	end
end
