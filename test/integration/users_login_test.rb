require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "login with invalid infomation" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: { email: "", password: ""}}
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "you should be able to logout" do
    delete logout_path
    assert_not logged_in?
  end
end
