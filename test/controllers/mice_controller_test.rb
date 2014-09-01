require 'test_helper'

class MiceControllerTest < ActionController::TestCase
  setup do
    @mouse = mice(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mice)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mouse" do
    assert_difference('Mouse.count') do
      post :create, mouse: { belongs_to: @mouse.belongs_to, dpc: @mouse.dpc, experiments: @mouse.experiments, mating_date: @mouse.mating_date, notes: @mouse.notes, number: @mouse.number, somites: @mouse.somites }
    end

    assert_redirected_to mouse_path(assigns(:mouse))
  end

  test "should show mouse" do
    get :show, id: @mouse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mouse
    assert_response :success
  end

  test "should update mouse" do
    patch :update, id: @mouse, mouse: { belongs_to: @mouse.belongs_to, dpc: @mouse.dpc, experiments: @mouse.experiments, mating_date: @mouse.mating_date, notes: @mouse.notes, number: @mouse.number, somites: @mouse.somites }
    assert_redirected_to mouse_path(assigns(:mouse))
  end

  test "should destroy mouse" do
    assert_difference('Mouse.count', -1) do
      delete :destroy, id: @mouse
    end

    assert_redirected_to mice_path
  end
end
