require 'test_helper'

class CsvUploadsControllerTest < ActionController::TestCase
  setup do
    @csv_upload = csv_uploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csv_uploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csv_upload" do
    assert_difference('CsvUpload.count') do
      post :create, csv_upload: {  }
    end

    assert_redirected_to csv_upload_path(assigns(:csv_upload))
  end

  test "should show csv_upload" do
    get :show, id: @csv_upload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @csv_upload
    assert_response :success
  end

  test "should update csv_upload" do
    put :update, id: @csv_upload, csv_upload: {  }
    assert_redirected_to csv_upload_path(assigns(:csv_upload))
  end

  test "should destroy csv_upload" do
    assert_difference('CsvUpload.count', -1) do
      delete :destroy, id: @csv_upload
    end

    assert_redirected_to csv_uploads_path
  end
end
