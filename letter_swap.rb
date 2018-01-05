def swap(string)
  swapped_string = string.split.each{ |string|
    string[0], string[-1] = string[-1], string[0]
    string}
  swapped_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
p swap('I can not believe that I figured it out')
