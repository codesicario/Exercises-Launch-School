vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicle_type)
  car = []
  truck = []
  suv = []
  motorcycle = []
  counter = 0

  loop do
    break if counter == vehicle_type.size

    current_vehicle  = vehicle_type[counter]

    if current_vehicle == "car"
      car << current_vehicle
    elsif current_vehicle == "truck"
      truck << current_vehicle
    elsif current_vehicle == "SUV"
      suv << current_vehicle
    elsif current_vehicle == "motorcycle"
      motorcycle << current_vehicle
    end

  counter += 1
  end
  puts "car => #{car.count}"
  puts "truck => #{truck.count}"
  puts "SUV => #{suv.count}"
  puts "motorcycle => #{motorcycle.count}"
end

count_occurrences(vehicles)


#LS solution
def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)
