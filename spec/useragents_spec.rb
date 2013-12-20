require 'spec_helper'

describe UserAgents do
  describe "self.list" do

    it "should not be empty" do
      UserAgents.list().blank?.should be(false)
    end
  end
end

describe Object do
  describe "[]" do
    it "should be blank" do
      [].blank?.should be(true)
    end
  end
end