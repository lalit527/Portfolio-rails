class PagesController < ApplicationController
  def home
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = ConfigTool.twitter_search
  end

end
