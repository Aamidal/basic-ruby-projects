def merge_sort(array)
  return array if array.length < 2

  left = []
  right = []

  array.each_with_index { |num, idx| idx < array.length / 2 ? left.push(num) : right.push(num) }

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(left, right)
  result = []

  while left.length.positive? && right.positive?
    left.first <= right.first ? result.push(left.shift) : result.push(right.shift)
  end

  result.push(left.shift) while left.positive?
  result.push(right.shift) while right.length.positive?

  result
end

num_list = [5, 4, 6, 7, 1, 2, 10, 13, 0, 2, 4, 7, 9, 2, 3, 45, 683, 493, 238]

puts "Original list: #{num_list}."
puts "Sorted list: #{merge_sort(num_list)}"
