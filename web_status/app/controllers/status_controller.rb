class StatusController < ApplicationController
  def index
  	@builds = Build.all(:order => "started_at DESC")
  end

	def motd
		return IO.read(Rails.root.join("config", "motd.txt"))
	rescue
		return ""
	end

	def build_now
		if !Build.any_in_progress?
			spawn("bash " + Rails.root.join("..", "update").to_s)
		end
			redirect_to :root
	end

	helper_method :motd
end
