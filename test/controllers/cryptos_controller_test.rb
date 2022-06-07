require "test_helper"

class CryptosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crypto = cryptos(:one)
  end

  test "should get index" do
    get cryptos_url, as: :json
    assert_response :success
  end

  test "should create crypto" do
    assert_difference('Crypto.count') do
      post cryptos_url, params: { crypto: { buying_price: @crypto.buying_price, crypto: @crypto.crypto, notes: @crypto.notes, quantity: @crypto.quantity, references: @crypto.references } }, as: :json
    end

    assert_response 201
  end

  test "should show crypto" do
    get crypto_url(@crypto), as: :json
    assert_response :success
  end

  test "should update crypto" do
    patch crypto_url(@crypto), params: { crypto: { buying_price: @crypto.buying_price, crypto: @crypto.crypto, notes: @crypto.notes, quantity: @crypto.quantity, references: @crypto.references } }, as: :json
    assert_response 200
  end

  test "should destroy crypto" do
    assert_difference('Crypto.count', -1) do
      delete crypto_url(@crypto), as: :json
    end

    assert_response 204
  end
end
