class ItemsController < ApplicationController
  def index
    @all = Item.all
    day_id = params[:id]
    items = Day.find(day_id).items
    # byebug
    render json: items
  end
end
