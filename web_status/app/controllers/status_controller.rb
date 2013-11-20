class StatusController < ApplicationController
  def index
  	@builds = Build.all
  end
end
