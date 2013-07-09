require 'test_helper'

class MailmesControllerTest < ActionController::TestCase
  setup do
    @mailme = mailmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailme" do
    assert_difference('Mailme.count') do
      post :create, mailme: { email: @mailme.email, name: @mailme.name }
    end

    assert_redirected_to mailme_path(assigns(:mailme))
  end

  test "should show mailme" do
    get :show, id: @mailme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailme
    assert_response :success
  end

  test "should update mailme" do
    put :update, id: @mailme, mailme: { email: @mailme.email, name: @mailme.name }
    assert_redirected_to mailme_path(assigns(:mailme))
  end

  test "should destroy mailme" do
    assert_difference('Mailme.count', -1) do
      delete :destroy, id: @mailme
    end

    assert_redirected_to mailmes_path
  end
end
