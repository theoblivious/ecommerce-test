class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all

  end

  # GET /items/1
  # GET /items/1.json
  def show
    @cart_action = @item.cart_action current_user.try :id
  end


private

def set_item
  @item = Item.find(params[:id])
end

end


