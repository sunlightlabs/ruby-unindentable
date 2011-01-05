require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "find_minimum_indent" do

  it "should handle an example with 3 indent levels" do
    s = <<-BLOCK
          A
        B
      C
        D
    BLOCK
    s.find_minimum_indent.should == 6
  end

  it "should not let blank lines break the indent" do
    s = <<-BLOCK
      The first line

      The third line
    BLOCK
    s.find_minimum_indent.should == 6
  end

end