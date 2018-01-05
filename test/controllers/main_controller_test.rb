require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should handle non-integers" do
    get '/main/fizz_buzz.json', params: {number:"not a number!"}
    assert_response(422)
  end

end
