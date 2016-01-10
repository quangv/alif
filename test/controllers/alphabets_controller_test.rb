require 'test_helper'

class AlphabetsControllerTest < ActionController::TestCase
  setup do
    @alphabet = alphabets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alphabets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alphabet" do
    assert_difference('Alphabet.count') do
      post :create, alphabet: { name: @alphabet.name }
    end

    assert_redirected_to alphabet_path(assigns(:alphabet))
  end

  test "should show alphabet" do
    get :show, id: @alphabet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alphabet
    assert_response :success
  end

  test "should update alphabet" do
    patch :update, id: @alphabet, alphabet: { name: @alphabet.name }
    assert_redirected_to alphabet_path(assigns(:alphabet))
  end

  test "should destroy alphabet" do
    assert_difference('Alphabet.count', -1) do
      delete :destroy, id: @alphabet
    end

    assert_redirected_to alphabets_path
  end
end
