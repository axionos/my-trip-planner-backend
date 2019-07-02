class ItemsController < ApplicationController
  def index
    # byebug
    @all = Item.all
    day_id = params[:id]
    items = Day.find(day_id).items
    # byebug
    render json: items
  end
end
