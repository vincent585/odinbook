require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save the post without a body" do
    post = Post.new
    assert_not post.save, 'saved the post without a body'
  end

  test "should not save the post with a body over 500 characters" do
    post = Post.new(body: SecureRandom.alphanumeric(700))
    assert_not post.save, 'saved the post with a 700 character body'
  end

  test "post.user should return associated user (poster)" do
    user = User.new(id: 1, email: 'test@test.com', password: 'pass', name: 'the name')
    post = Post.new(body: 'the body', user: user)

    assert_same user, post.user
  end
end
