class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]
  before_action :only => [:new, :create, :edit, :update, :destroy] do
    redirect_to new_user_session_path unless admin
  end

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def new
    @product = Product.new
  end

  def create
    @products = Product.all
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product created."
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js
      end
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
