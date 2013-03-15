require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe User do
	before do
		@user = User.new
	end

	it{ @user.should have_many(:statuses)}
	it{ should validate_presence_of(:name)}	

	it “has statuses” do
		@user.respond_to?(:statuses).should be_true
	end

end
