require "application_system_test_case"

class CategoryProductosTest < ApplicationSystemTestCase
  setup do
    @category_producto = category_productos(:one)
  end

  test "visiting the index" do
    visit category_productos_url
    assert_selector "h1", text: "Category Productos"
  end

  test "creating a Category producto" do
    visit category_productos_url
    click_on "New Category Producto"

    fill_in "Category", with: @category_producto.category_id
    fill_in "Producto", with: @category_producto.producto_id
    click_on "Create Category producto"

    assert_text "Category producto was successfully created"
    click_on "Back"
  end

  test "updating a Category producto" do
    visit category_productos_url
    click_on "Edit", match: :first

    fill_in "Category", with: @category_producto.category_id
    fill_in "Producto", with: @category_producto.producto_id
    click_on "Update Category producto"

    assert_text "Category producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Category producto" do
    visit category_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category producto was successfully destroyed"
  end
end
