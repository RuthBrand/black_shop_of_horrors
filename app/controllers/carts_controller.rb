class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    item = Item.find(params[:item_id])

    @cart.add_item(item.id)
    session[:cart] = @cart.contents

    flash[:notice] = "You now have #{pluralize(@cart.count_of(item.id), item.title)}."
    redirect_to category_path(item.category)
  end

  def show
    redirect_to categories_path
  end

  def index
    # @cart.delete(params[:item_id])

    # flash[:notice] = "You removed #{Item.find(params[:item_id]).title} from cart!"

  end

  def edit
    byebug
  end

  def destroy
    item_id = params[:item_id]
    @cart.delete(item_id)
    redirect_to cart_path
  end
end

# add `update` method to handle add/remove items?
# index shouldn't do anything to the cart
# create should create new cart, not add items.
