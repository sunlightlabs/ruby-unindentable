require File.expand_path("../spec_helper", __FILE__)

describe "unindent" do
  it "leaves empty strings untouched" do
    x = <<-EOF
    EOF

    x.unindent.should == x
  end

  it "unindents html snippet" do
    x = <<-EOF.unindent
      <html>
        <body>
          <p>Hello</p>
        </body>
      </html>
    EOF
    x.should == "<html>\n  <body>\n    <p>Hello</p>\n  </body>\n</html>\n"
  end

  it "leaves unchanged text with no indentation" do
    x = <<-EOF.unindent
a
b
c
    EOF
    x.unindent.should == x
  end

  it "removes all leading spaces from text with all lines indented at the same level" do
    x = <<-EOF.unindent
      a
      b
      c
    EOF
    x.should == "a\nb\nc\n"
  end

  it "unindents a text with 2 level indentation" do
    x = <<-EOF.unindent
      X 1 2
        yada yada
      Z Z Z
    EOF
    x.should == "X 1 2\n  yada yada\nZ Z Z\n"
  end

  it "unindents text with 3 level indentation" do
    x = <<-EOF.unindent
          A
        B
      C
        D
    EOF
    x.should == "    A\n  B\nC\n  D\n"
  end

  it "preserves indented blank lines" do
    x = <<-EOF.unindent
      The first line
        The second line
\s\s\s\s\s\s\s\s
      The fourth line
    EOF
    x.should == "The first line\n  The second line\n  \nThe fourth line\n"
  end

  it "unindents tabbed indentation" do
    x = <<-EOF.unindent
\t\t\tThe first line
\t\t\t\tThe second line
\t\t\t\t
\t\t\tThe fourth line
    EOF
    x.should == "The first line\n\tThe second line\n\t\nThe fourth line\n"
  end

  it "preserves empty lines" do
    x = <<-EOF.unindent
      The first line

      The third line
    EOF
    x.should == "The first line\n\nThe third line\n"
  end

end
