class ScreechesController < ApplicationController

  def index
    @screeches = Screech.all

    respond_to do | format |

      format.json do
        render json: @screeches
      end

    end

  end

  def new
    @screech = Screech.new
    render json: @screech
  end

  def create
    @screech = Screech.new(screech_params)
    # render json: @screech
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
