def merge_sort(array)
    return array if array.length < 2

    left = []
    right = []

    array.each_with_index { |num, idx| idx < array.length/2 ? left.push(num) : right.push(num) }

    left = merge_sort(left)
    right = merge_sort(right)

    return merge(left, right)
end

def merge(left, right)
    result = []

    while left.length > 0 && right.length > 0 do
        left.first <= right.first ? result.push(left.shift) : result.push(right.shift)
    end

    while left.length > 0 do
        result.push(left.shift)
    end
    while right.length > 0 do
        result.push(right.shift)
    end
    
    return result
end

num_list = [5, 4, 6, 7, 1, 2, 10, 13, 0, 2, 4, 7, 9, 2, 3, 45, 683, 39, 9999999, 493, 238]

puts "Original list: #{num_list}."
puts "Sorted list: #{merge_sort(num_list)}"

