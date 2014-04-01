require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "that creating a friendship works without raising an exception" do
		assert_nothing_raised do
		  UserFriendship.create user: users(:emily), friend: users(:bowie)
	  end
	end
	
	test "that creating a friendship based on a user if and friend id works" do
		UserFriendship.create user_id: users(:emily).id, friend_id: users(:bowie).id
		assert users(:emily).friends.include?(users(:bowie))
	end
end
