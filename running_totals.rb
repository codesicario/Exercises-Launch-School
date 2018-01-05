def running_total(array)
  index = 1
  counter = 0

  while index < array.size
    array[index] = array[counter] + array[index]

    counter += 1
    index += 1
  end
  array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
p running_total([34, 23, 67, 3, 8, 12, 30])



#LS solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end



#solution using .each_with_object
def running_total(array)
  sum = 0
  array.each_with_object([]) { |num, array| array << sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
p running_total([34, 23, 67, 3, 8, 12, 30])
