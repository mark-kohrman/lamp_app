class Api::LampsController < ApplicationController
  def index
    @lamps = Lamp.all
    render 'index.json.jb'
  end

  def show
    @lamp = Lamp.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create

    @lamp = Lamp.new(
      color: params[:color],
      size: params[:size],
      price: params[:price]
    )
    @lamp.save

    render 'show.json.jb'
  end

end
