class StatusController < ApplicationController
  def index
  	@builds = Build.all(:order => "started_at DESC")
  end
end
