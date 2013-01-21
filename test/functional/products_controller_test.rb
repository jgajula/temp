require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { brand: @product.brand, category: @product.category, description: @product.description, disabled: @product.disabled, external_id: @product.external_id, likes: @product.likes, name: @product.name, on_sale: @product.on_sale, original_price: @product.original_price, pic_url: @product.pic_url, rating: @product.rating, sale_price: @product.sale_price, source_site: @product.source_site, upc: @product.upc, visible_id: @product.visible_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { brand: @product.brand, category: @product.category, description: @product.description, disabled: @product.disabled, external_id: @product.external_id, likes: @product.likes, name: @product.name, on_sale: @product.on_sale, original_price: @product.original_price, pic_url: @product.pic_url, rating: @product.rating, sale_price: @product.sale_price, source_site: @product.source_site, upc: @product.upc, visible_id: @product.visible_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
