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

  def update
    @lamp = Lamp.find_by(id: params[:id])

    @lamp.update(
      color: params[:color] || @lamp.color,
      size: params[:size] || @lamp.size,
      price: params[:price] || @lamp.price
    )

    render 'show.json.jb'
  end

end
