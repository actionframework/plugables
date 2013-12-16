module ActionFramework
	class Package
		attr_accessor :name
		attr_accessor :stock
		attr_accessor :location

		def name name
			@name = name
		end

		def stock stock
			@stock = stock
		end

		def location location
			@location = location
		end
	end
end