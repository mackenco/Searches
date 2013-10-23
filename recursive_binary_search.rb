def binary_search(arr, target)
  target_index = arr.length/2 - 1
  if arr[target_index] == target
    temp = target_index
  elsif arr.length == 1
    temp = nil
  else
    if arr[target_index] > target && !binary_search(arr[0..arr.length/2], target).nil?
      temp = binary_search(arr[0..arr.length/2], target)
    elsif arr[target_index] < target && !binary_search(arr[arr.length/2..-1], target).nil?
      temp = target_index + binary_search(arr[arr.length/2..-1], target)
    end
  end
  temp
end

p binary_search((1..10).to_a, 5)
p binary_search((1..10).to_a, 8)
p binary_search((1..10).to_a, 2)
p binary_search((1..10).to_a, 1)
p binary_search((1..10).to_a, 1000000)