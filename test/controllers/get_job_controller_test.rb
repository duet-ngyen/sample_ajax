require 'test_helper'

class GetJobControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get get_job_index_url
    assert_response :success
  end

end
