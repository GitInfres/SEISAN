# premier_spec.rb
require './premier'

describe "premier" do
	it "returns true if premier" do
		premier(1).should eq(false)
	end
end
