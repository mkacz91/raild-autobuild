class Build < ActiveRecord::Base
	has_many :commands, dependent: :destroy
	
	def status_local
		case status
		when :in_progress
			return "w toku"
		when :successful
			return "powodzenie"
		else
			return "nieudana"
		end
	end

	def status_css
		case status
		when :in_progress
			return "in-progress"
		when :successful
			return "successful"
		else
			return "failed"
		end
	end
end
