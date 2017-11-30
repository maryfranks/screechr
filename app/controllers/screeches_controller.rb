class ScreechesController < ApplicationController

  def index
    @screeches = Screech.all

  end

  def new
    @screech = Screech.new
    render json: @screech
  end

  def create
    @screech = Screech.new(screech_params)
    @screech.save
  end

  def edit
    @screech = Screech.find(params[:id])

  end

  def update
    @screetch = Screech.find(params[:id])
    @screech.update(screech_params)
  end

  private

  def screech_params
    params.require(:screech).permit(:user_id, :content)
  end

end
