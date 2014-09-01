require 'test_helper'

class CulturesControllerTest < ActionController::TestCase
  setup do
    @culture = cultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create culture" do
    assert_difference('Culture.count') do
      post :create, culture: { culture_details: @culture.culture_details, schema_1: @culture.schema_1, schema_2: @culture.schema_2, schema_3: @culture.schema_3, schema_4: @culture.schema_4, schema_5: @culture.schema_5, schema_6: @culture.schema_6, schema_7: @culture.schema_7, schema_8: @culture.schema_8, starting_date: @culture.starting_date, termination_date: @culture.termination_date }
    end

    assert_redirected_to culture_path(assigns(:culture))
  end

  test "should show culture" do
    get :show, id: @culture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @culture
    assert_response :success
  end

  test "should update culture" do
    patch :update, id: @culture, culture: { culture_details: @culture.culture_details, schema_1: @culture.schema_1, schema_2: @culture.schema_2, schema_3: @culture.schema_3, schema_4: @culture.schema_4, schema_5: @culture.schema_5, schema_6: @culture.schema_6, schema_7: @culture.schema_7, schema_8: @culture.schema_8, starting_date: @culture.starting_date, termination_date: @culture.termination_date }
    assert_redirected_to culture_path(assigns(:culture))
  end

  test "should destroy culture" do
    assert_difference('Culture.count', -1) do
      delete :destroy, id: @culture
    end

    assert_redirected_to cultures_path
  end
end
