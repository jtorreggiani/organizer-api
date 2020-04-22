require 'test_helper'

class Api::V1::RootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url, as: :json
    assert_response :success
  end

  test "should return data" do
    get root_url, as: :json
    data = JSON.parse(@response.body)
    assert_equal 1, data['version']
    assert data['active']
  end
end
