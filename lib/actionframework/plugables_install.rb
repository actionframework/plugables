$plugs = []
module ActionFramework
	class Plugables
		def initialize &block
			self.instance_eval &block
		end

		def plug plugname
			plug << plugname
		end
	end
end