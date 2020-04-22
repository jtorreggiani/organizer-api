require 'test_helper'

class Api::V1::RootControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get root_url, as: :json
    assert_response :success
  end
end
