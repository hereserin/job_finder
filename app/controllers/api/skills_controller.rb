class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render 'api/skills/index'
  end

end
