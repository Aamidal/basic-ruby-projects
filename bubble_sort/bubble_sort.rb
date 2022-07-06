def bubble_sort(array)
  a = array
  n = a.length
  until n <= 0 do
    new_n = 0
    for i in 1..n-1 do
      if a[i-1] > a[i] then
        array[i-1], array[i] = array[i], array[i-1]
        new_n = i
      end
    end
    n = new_n
  end
  return a
end

p bubble_sort([4,3,78,2,0,2])
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]