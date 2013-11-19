class Movie < ActiveRecord::Base
	def flop
       totall_gross.blank? || totall_gross < 50000000
	end


    def self.released
    	where("released_on <= ?", Time.now).order("released_on desc")
    end

end
