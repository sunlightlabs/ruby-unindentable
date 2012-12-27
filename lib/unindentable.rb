class String

  # Removes common indentation from each line of a string
  def unindent
    gsub(/^#{scan(/^[\ \t]+/).min}/, '')
  end

end
