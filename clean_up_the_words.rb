def cleanup(dirty_string)
  regex = /\s+/
  clean_string = dirty_string.gsub(/[^a-z]/i, ' ')
  clean_string.gsub(regex, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
