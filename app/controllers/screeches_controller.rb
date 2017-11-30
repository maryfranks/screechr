class ScreechesController < ApplicationController

  def index
    @screeches = Screech.all

    respond_to do | format |

      format.json do
        render json: @screeches
      end

    end

  end

  def show

  end

  def new
    @screech = Screech.new
  end

  def create
    @screech = Screech.new(screech_params)
    if @screech.save
      redirect_to screeches_path
    else
      render new_screech_path
    end
  end

  def edit

  end

  def update

  end

  private

  def screech_params
    params.require(:screech).permit(:user_id, :content) 
  end

end
