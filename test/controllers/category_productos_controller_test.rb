require 'test_helper'

class CategoryProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_producto = category_productos(:one)
  end

  test "should get index" do
    get category_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_category_producto_url
    assert_response :success
  end

  test "should create category_producto" do
    assert_difference('CategoryProducto.count') do
      post category_productos_url, params: { category_producto: { category_id: @category_producto.category_id, producto_id: @category_producto.producto_id } }
    end

    assert_redirected_to category_producto_url(CategoryProducto.last)
  end

  test "should show category_producto" do
    get category_producto_url(@category_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_producto_url(@category_producto)
    assert_response :success
  end

  test "should update category_producto" do
    patch category_producto_url(@category_producto), params: { category_producto: { category_id: @category_producto.category_id, producto_id: @category_producto.producto_id } }
    assert_redirected_to category_producto_url(@category_producto)
  end

  test "should destroy category_producto" do
    assert_difference('CategoryProducto.count', -1) do
      delete category_producto_url(@category_producto)
    end

    assert_redirected_to category_productos_url
  end
end
