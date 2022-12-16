class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Form::Product.new
  end

  def create
    @product = Form::Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprosessable_entity
    end
  end

  def edit
    @product = Form::Product.find(params[:id])
  end

  def update
    @product = Form::Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit, status: :unprosessable_entity
    end
  end

  private

  def product_params
    params
      .require(:form_product)
      .reverse_merge(category_ids: [])
      .permit(Form::Product::REGISTRABLE_ATTRIBUTES + Form::Product::REGISTRABLE_RELATIONS)
  end
end
