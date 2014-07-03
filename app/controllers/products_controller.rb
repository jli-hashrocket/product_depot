class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to @product, notice: "Product was saved successfully"
    else
      render action: 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: "Product was saved successfully"
    else
      render action: 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_url, notice: "Product was successfully deleted"
    end
  end

  private
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end

end
