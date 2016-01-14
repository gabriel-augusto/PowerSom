class ReformsController < ApplicationController

  def index
    @reforms = Reform.all
  end

  def new
    @reform = Reform.new
  end

  def create
    @reform = Reform.new(reform_params)
    if @reform.save
      redirect_to '/reforms'
    else
      render 'new'
    end
  end

  private 
  def reform_params 
    params.require(:reform).permit(:client, :description) 
  end
end
