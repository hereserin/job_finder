class Api::ExperienceLevelsController < ApplicationController
  def index
    @experience_levels = ExperienceLevel.all
    render 'api/experience_levels/index'
  end

end
