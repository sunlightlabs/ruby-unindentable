class String

  # Removes common indentation from each line of a string
  def unindent
    drop_from_each_line(find_minimum_indent)
  end

  # Drops n characters from the start of each line, but will not drop a line
  # entirely; in other words, it will not drop a newline.
  def drop_from_each_line(n)
    self.lines.map do |line|
      k = 0
      line.chars.drop_while do |x|
        k += 1
        k <= n && x != "\n"
      end.join("")
    end.join("")
  end

  # Returns the indent level (number of spaces at the start of a string) with
  # multiple lines
  def find_minimum_indent
    self.lines.map { |s| s.index(/[^\s]/) unless s.empty? }.compact.min
  end

end
