def merge_sort(array)
  return array if array.length == 1
  first_half = merge_sort(array[0..(array.length/2 - 1)])
  second_half = merge_sort(array[(array.length/2)..-1])
  sorted_array = []
  while first_half.length > 0 and second_half.length > 0
    case first_half[0] <=> second_half[0]
    when -1
      sorted_array << first_half.shift
    when 0
      sorted_array << first_half.shift
    when 1
      sorted_array << second_half.shift
    else
      p "OMG, Bad stuff!"
    end
  end
  sorted_array << first_half
  sorted_array << second_half
  sorted_array.flatten
end

random_array = (1..10).to_a.shuffle
p random_array
p merge_sort(random_array)