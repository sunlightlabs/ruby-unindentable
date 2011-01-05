require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

S = <<-BLOCK
  X
    y
  ZZ
BLOCK

describe "drop_from_each_line" do
  describe "example with 2 space indent, 2 indent levels" do
    it "-" do
      S.should == "  X\n    y\n  ZZ\n"
    end

    it "0" do
      S.drop_from_each_line(0).should == "  X\n    y\n  ZZ\n"
    end

    it "1" do
      S.drop_from_each_line(1).should == " X\n   y\n ZZ\n"
    end

    it "2" do
      S.drop_from_each_line(2).should == "X\n  y\nZZ\n"
    end

    it "3" do
      S.drop_from_each_line(3).should == "\n y\nZ\n"
    end

    it "4" do
      S.drop_from_each_line(4).should == "\ny\n\n"
    end

    it "5" do
      S.drop_from_each_line(5).should == "\n\n\n"
    end

    it "6" do
      S.drop_from_each_line(6).should == "\n\n\n"
    end
  end
end