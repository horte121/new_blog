require 'test_helper'

class NewBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_blog = new_blogs(:one)
  end

  test "should get index" do
    get new_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_new_blog_url
    assert_response :success
  end

  test "should create new_blog" do
    assert_difference('NewBlog.count') do
      post new_blogs_url, params: { new_blog: { body: @new_blog.body, title: @new_blog.title } }
    end

    assert_redirected_to new_blog_url(NewBlog.last)
  end

  test "should show new_blog" do
    get new_blog_url(@new_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_blog_url(@new_blog)
    assert_response :success
  end

  test "should update new_blog" do
    patch new_blog_url(@new_blog), params: { new_blog: { body: @new_blog.body, title: @new_blog.title } }
    assert_redirected_to new_blog_url(@new_blog)
  end

  test "should destroy new_blog" do
    assert_difference('NewBlog.count', -1) do
      delete new_blog_url(@new_blog)
    end

    assert_redirected_to new_blogs_url
  end
end
