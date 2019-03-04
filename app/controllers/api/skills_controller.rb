class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.order(:skill).all
    render 'api/skills/index'
  end

end
