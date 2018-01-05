def oddities(arry)
  arry.values_at(* arry.each_index.select { |i| i.even? })
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []


def other_oddities(array)
  index_to_keep = array.each_index.select { |i| i % 2 == 0 }
  array.values_at(*index_to_keep)
end

p other_oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p other_oddities(['abc', 'def']) == ['abc']
p other_oddities([123]) == [123]
p other_oddities([]) == []


def more_oddities(num_arry)
  num_arry.collect!.with_index { |x, i| x if i % 2 == 0 }
  num_arry.compact
end

p more_oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p more_oddities(['abc', 'def']) == ['abc']
p more_oddities([123]) == [123]
p more_oddities([]) == []


#LS solution
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end
