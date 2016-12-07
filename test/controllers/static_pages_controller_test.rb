require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "わきあいアイクリニック"
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

end
