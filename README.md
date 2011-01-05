# Unindentable

With Unindentable, you can write heredocs without worry of wonky indentation.

## Motivation

Heredocs are convenient.  But the indentation can bite you.  For example:

    def hello
      html = <<-BLOCK
        <html>
          <body>
            <p>Hello</p>
          </body>
        </html>
      BLOCK
    end

The problem is that you get extra indentation you probably don't want:

    irb> hello
    => "    <html>\n      <body>\n        <p>Hello</p>\n      </body>\n    </html>\n"

One solution is to move your heredoc to the left margin:

    def hello
      html = <<-BLOCK
    <html>
      <body>
        <p>Hello</p>
      </body>
    </html>
      BLOCK
    end

So that you get the result you expect:

    > hello
    => "<html>\n  <body>\n    <p>Hello</p>\n  </body>\n</html>\n"

But this doesn't look good in your source.  With Unindentable, you can write:

    include Unindentable
    def hello
      html = unindent <<-BLOCK
        <html>
          <body>
            <p>Hello</p>
          </body>
        </html>
      BLOCK
    end

And get the nice unindented result you want:

    > hello
    => "<html>\n  <body>\n    <p>Hello</p>\n  </body>\n</html>\n"

That's it.

## The Backstory

Here are some examples from the Interwebs where people discuss potential solutions:

* http://oldrcrs.rubypal.com/rcr/show/188
* http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/19111
* http://www.ruby-forum.com/topic/167227
* http://www.ruby-forum.com/topic/95472

## Alternatives

* http://rubygems.org/gems/unindent
