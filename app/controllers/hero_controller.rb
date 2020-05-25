class HeroController < ApplicationController
  def index
    @heroes = Hero.all
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: 'Enter the name of the hero you want to search') and return
    else
      @parameter = params[:search].downcase
      @heroes = Hero.all.where('lower(name) LIKE :search', search: "#{@parameter}%")
    end
  end

  def show
    if params[:format].to_i > Hero.last.id
      redirect_to(root_path, alert: 'There is no hero with that ID') and return
    else
      @heroes = Hero.find(params[:format])
    end
  end
end
