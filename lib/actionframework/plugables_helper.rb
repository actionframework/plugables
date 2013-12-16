module ActionFramework
	class PlugablesHelper
		def self.load plugable
			if File.exist? Dir.home+"/.actionframework/plugs/"+plugable+".rb" || File.exist? Dir.home+"/.actionframework/plugables/plugs/"+plugable+".rb"
				require File.join(Dir.home,".actionframework/plugs/"+plugable)
			elsif File.exist? Dir.home+"/.actionframework/plugables/Plugsinfo/"+plugable+".rb"
				puts "Plugable# #{plugable} in not installed, run $ action install"
			else
				puts "Plugable #{plugable} doens't exist"
			end	
		end

		def self.install
			require 'actionframework/plugables_install'
			require File.join(Dir.pwd,'config/plugables');
		end
	end
end