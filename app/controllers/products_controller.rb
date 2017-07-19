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
      redirect_to products_path
    else
      flash[:notice] = "Oops. Try again. You missed something."
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      flash[:notice] = "Oops. Try again. You missed something."
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Your product has been deleted"
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
