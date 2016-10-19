require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @relationship = Relationship.new(follower_id: users(:zhouying).id,
                                     followed_id: users(:susu).id)
  end

  test "should be valid" do
    assert @relationship.valid?
  end

  test "should require a follower_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end

  test "should require a folloed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end

end
