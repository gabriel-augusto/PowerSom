class ReformsController < ApplicationController

  def index
    @reforms = Reform.all
    @reform = Reform.new

    if params[:search]
      search
    end

    if params[:close]
      close
    end
  end

  def create
    @reform = Reform.new(reform_params)
    if @reform.save
      redirect_to '/index'
    else

    end
  end

  def search
    if Reform.exists?(params[:search])
      @reform_search = Reform.find(params[:search])
    end
  end

  def close
    if Reform.exists?(params[:close])
      @reform = Reform.find(params[:close])
      @reform.closed=1
      @reform.save
      redirect_to '/index'
    end
  end

  private 
  def reform_params 
    params.require(:reform).permit(:client, :description)
  end
end
