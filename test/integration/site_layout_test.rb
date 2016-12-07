require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/index'
    get signup_path
    assert_select "title", full_title("Sign up")
  end
  
end
