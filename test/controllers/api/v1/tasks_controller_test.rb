require 'test_helper'

class Api::V1::TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get api_v1_tasks_url, as: :json
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post api_v1_tasks_url, params: { task: { due_time: @task.due_time, text: @task.text } }, as: :json
    end

    assert_response 201
  end

  test "should show task" do
    get api_v1_task_url(@task), as: :json
    assert_response :success
  end

  test "should update task" do
    new_text = 'Hello text!'
    new_due_time = Date.parse('2020-04-21T00:00:00-04:00')

    patch api_v1_task_url(@task), params: { task: { due_time: new_due_time.to_s, text: new_text } }, as: :json

    @task.reload

    assert_equal new_due_time, @task.due_time
    assert_equal new_text, @task.text

    assert_response 200
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete api_v1_task_url(@task), as: :json
    end

    assert_response 204
  end
end
