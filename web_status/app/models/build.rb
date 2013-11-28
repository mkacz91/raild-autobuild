class Build < ActiveRecord::Base
	has_many :commands, dependent: :destroy
	
	def status_local
		case status
		when "in_progress"
			return "w toku"
		when "successful"
			return "powodzenie"
		else
			return "nieudana"
		end
	end

	def status_css
		case status
		when "in_progress"
			return "in-progress"
		when "successful"
			return "successful"
		else
			return "failed"
		end
	end

	def trigger_mode_local
		case trigger_mode
		when "manual"
			return "manualny"
		else
			return "automatyczny"
		end
	end

	def self.any_in_progress?
		return exists?(status: "in_progress")
	end
end
