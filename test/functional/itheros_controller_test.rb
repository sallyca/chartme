require 'test_helper'

class ItherosControllerTest < ActionController::TestCase
  setup do
    @ithero = itheros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itheros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ithero" do
    assert_difference('Ithero.count') do
      post :create, ithero: { age: @ithero.age, city: @ithero.city, company_size: @ithero.company_size, date: @ithero.date, education: @ithero.education, english: @ithero.english, gender: @ithero.gender, language: @ithero.language, netwage: @ithero.netwage, spec_more: @ithero.spec_more, speciality: @ithero.speciality, tenure: @ithero.tenure, tenure_current: @ithero.tenure_current, user_agent: @ithero.user_agent, wage_diff: @ithero.wage_diff }
    end

    assert_redirected_to ithero_path(assigns(:ithero))
  end

  test "should show ithero" do
    get :show, id: @ithero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ithero
    assert_response :success
  end

  test "should update ithero" do
    put :update, id: @ithero, ithero: { age: @ithero.age, city: @ithero.city, company_size: @ithero.company_size, date: @ithero.date, education: @ithero.education, english: @ithero.english, gender: @ithero.gender, language: @ithero.language, netwage: @ithero.netwage, spec_more: @ithero.spec_more, speciality: @ithero.speciality, tenure: @ithero.tenure, tenure_current: @ithero.tenure_current, user_agent: @ithero.user_agent, wage_diff: @ithero.wage_diff }
    assert_redirected_to ithero_path(assigns(:ithero))
  end

  test "should destroy ithero" do
    assert_difference('Ithero.count', -1) do
      delete :destroy, id: @ithero
    end

    assert_redirected_to itheros_path
  end
end
