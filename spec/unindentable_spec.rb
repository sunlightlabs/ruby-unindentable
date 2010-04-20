require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + '/../lib/unindentable')

describe "Unindentable" do
  include Unindentable

  it "should handle the README example" do
    html = unindent <<-BLOCK
      <html>
        <body>
          <p>Hello</p>
        </body>
      </html>
    BLOCK
    html.should == "<html>\n  <body>\n    <p>Hello</p>\n  </body>\n</html>\n"
  end

  it "should handle ugly heredoc against left margin" do
    x = unindent <<-BLOCK
a
b
c
    BLOCK
    x.should == "a\nb\nc\n"
  end

  it "should handle a basic example" do
    x = unindent <<-BLOCK
      a
      b
      c
    BLOCK
    x.should == "a\nb\nc\n"
  end

  it "should handle an example with 2 indent levels" do
    x = unindent <<-BLOCK
      X 1 2
        yada yada
      Z Z Z
    BLOCK
    x.should == "X 1 2\n  yada yada\nZ Z Z\n"
  end

  it "should handle an example with 3 indent levels" do
    x = unindent <<-BLOCK
          A
        B
      C
        D
    BLOCK
    x.should == "    A\n  B\nC\n  D\n"
  end

  it "should preserve varying indent levels a blank line" do
    x = unindent <<-BLOCK
      The first line
        The second line
        
      The fourth line
    BLOCK
    x.should == "The first line\n  The second line\n  \nThe fourth line\n"
  end

  it "should not let blank lines break the indent" do
    x = unindent <<-BLOCK
      The first line

      The third line
    BLOCK
    x.should == "The first line\n\nThe third line\n"
  end

end
