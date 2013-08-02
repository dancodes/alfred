require 'spec_helper'

describe Assignment do
	subject { Factories::Assignment.withSolution }

	it "should not destroy if has solutions" do
	  subject.destroy.should be_false
	end

  describe "Big test_script" do
    before do
      @vending = Factories::Assignment.vending_machine
    end

    it "shoud save successfuly when a large script is specified" do
      string_capacity = 255
      @vending.test_script = " " * ( string_capacity + 20 ) 
      @vending.save.should be_true
    end
  end
end
