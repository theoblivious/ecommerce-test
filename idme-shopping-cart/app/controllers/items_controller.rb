class ItemsController < ApplicationController
  # GET /items
  # GET /items.json
  def index
    @items = Item.all

  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
    @cart_action = @item.cart_action current_user.try :id
  end




end


