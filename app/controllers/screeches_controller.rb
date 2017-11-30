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

  end

  def create

  end

  def edit

  end

  def update

  end

end
