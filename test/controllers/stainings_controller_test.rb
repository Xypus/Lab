require 'test_helper'

class StainingsControllerTest < ActionController::TestCase
  setup do
    @staining = stainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staining" do
    assert_difference('Staining.count') do
      post :create, staining: { antibodies: @staining.antibodies, foetus: @staining.foetus, results: @staining.results, results_file: @staining.results_file, schema_1: @staining.schema_1, schema_2: @staining.schema_2, schema_3: @staining.schema_3, schema_4: @staining.schema_4, schema_5: @staining.schema_5, schema_6: @staining.schema_6, schema_7: @staining.schema_7, schema_8: @staining.schema_8, staining_date: @staining.staining_date, staining_protocol: @staining.staining_protocol }
    end

    assert_redirected_to staining_path(assigns(:staining))
  end

  test "should show staining" do
    get :show, id: @staining
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staining
    assert_response :success
  end

  test "should update staining" do
    patch :update, id: @staining, staining: { antibodies: @staining.antibodies, foetus: @staining.foetus, results: @staining.results, results_file: @staining.results_file, schema_1: @staining.schema_1, schema_2: @staining.schema_2, schema_3: @staining.schema_3, schema_4: @staining.schema_4, schema_5: @staining.schema_5, schema_6: @staining.schema_6, schema_7: @staining.schema_7, schema_8: @staining.schema_8, staining_date: @staining.staining_date, staining_protocol: @staining.staining_protocol }
    assert_redirected_to staining_path(assigns(:staining))
  end

  test "should destroy staining" do
    assert_difference('Staining.count', -1) do
      delete :destroy, id: @staining
    end

    assert_redirected_to stainings_path
  end
end
