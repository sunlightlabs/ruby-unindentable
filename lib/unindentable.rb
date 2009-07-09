module Unindentable

  # Removes common indentation from each line of a string
  def unindent(string)
    left_trim(string, find_minimum_indent(string))
  end
  
  protected
  
  # Returns the indent level of a string (with multiple lines)
  def find_minimum_indent(string)
    indents = []
    string.each_line { |l| indents << l.index(/[^ ]/) }
    indents.min
  end
  
  # Trims the leftmost n characters from each line of a string
  def left_trim(string, n)
    new_string = ""
    string.each_line { |l| new_string << l.slice(n, l.length) }
    new_string
  end
  
end
