class CategoryProductosController < ApplicationController
  before_action :set_category_producto, only: [:show, :edit, :update, :destroy]

  # GET /category_productos
  # GET /category_productos.json
  def index
    @category_productos = CategoryProducto.all
  end

  # GET /category_productos/1
  # GET /category_productos/1.json
  def show
  end

  # GET /category_productos/new
  def new
    @category_producto = CategoryProducto.new
  end

  # GET /category_productos/1/edit
  def edit
  end

  # POST /category_productos
  # POST /category_productos.json
  def create
    @category_producto = CategoryProducto.new(category_producto_params)

    respond_to do |format|
      if @category_producto.save
        format.html { redirect_to @category_producto, notice: 'Category producto was successfully created.' }
        format.json { render :show, status: :created, location: @category_producto }
      else
        format.html { render :new }
        format.json { render json: @category_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_productos/1
  # PATCH/PUT /category_productos/1.json
  def update
    respond_to do |format|
      if @category_producto.update(category_producto_params)
        format.html { redirect_to @category_producto, notice: 'Category producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_producto }
      else
        format.html { render :edit }
        format.json { render json: @category_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_productos/1
  # DELETE /category_productos/1.json
  def destroy
    @category_producto.destroy
    respond_to do |format|
      format.html { redirect_to category_productos_url, notice: 'Category producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_producto
      @category_producto = CategoryProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_producto_params
      params.require(:category_producto).permit(:producto_id, :category_id)
    end
end
