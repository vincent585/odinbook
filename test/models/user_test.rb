require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save the user without email" do
    user = User.new(password: '112231231211', name: 'bob')
    assert_not user.save, 'saved the user with no email'
  end

  test "should not save the user without password" do
    user = User.new(email: 'bob@email.com', name: 'bob')
    assert_not user.save, 'saved the user with no password'
  end

  test "should not save the user with too short password" do
    user = User.new(email: 'blah', name: 'bob', password: '1')
    assert_not user.save, 'user saved with too short password'
  end

  test "should not save the user with no name" do
    user = User.new(email:'bob', password: 'password123')
    assert_not user.save, 'user saved with no name'
  end

  test "should not save the user with too long name" do
    user = User.new(email:'bob', password: 'password123', name: SecureRandom.alphanumeric(101))
    assert_not user.save, 'user saved with too long of a name'
  end

  test "user.posts should get associated posts" do
    user = User.new(id: 1, name: 'bob', email: 'bob@test.com', password: 'password123')
    posts = [Post.new(id: 1, body: 'body', user: user), Post.new(id: 2, body: 'body2', user: user)]

    assert user.posts.all? { |post| posts.include?(post) }
  end
end
