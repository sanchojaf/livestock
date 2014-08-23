require 'test_helper'

class PeriodMilkProductionsControllerTest < ActionController::TestCase
  setup do
    @period_milk_production = period_milk_productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:period_milk_productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create period_milk_production" do
    assert_difference('PeriodMilkProduction.count') do
      post :create, period_milk_production: { date_first_milking: @period_milk_production.date_first_milking, livestock_id: @period_milk_production.livestock_id }
    end

    assert_redirected_to period_milk_production_path(assigns(:period_milk_production))
  end

  test "should show period_milk_production" do
    get :show, id: @period_milk_production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @period_milk_production
    assert_response :success
  end

  test "should update period_milk_production" do
    patch :update, id: @period_milk_production, period_milk_production: { date_first_milking: @period_milk_production.date_first_milking, livestock_id: @period_milk_production.livestock_id }
    assert_redirected_to period_milk_production_path(assigns(:period_milk_production))
  end

  test "should destroy period_milk_production" do
    assert_difference('PeriodMilkProduction.count', -1) do
      delete :destroy, id: @period_milk_production
    end

    assert_redirected_to period_milk_productions_path
  end
end
