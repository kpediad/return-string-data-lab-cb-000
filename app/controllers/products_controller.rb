class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
<<<<<<< HEAD
    @product = Product.new
=======
>>>>>>> 978e883bef88b8be0e5c671c5f7578e2f2b2e077
  end

  def create
    @product = Product.create(product_params)
    @product.save
    redirect_to products_path
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.is_available?
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :inventory)
  end

end
