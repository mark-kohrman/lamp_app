class Api::LampsController < ApplicationController
  def index
    @lamps = Lamp.all
    render 'index.json.jb'
  end
end
