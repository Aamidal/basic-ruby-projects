## if n = 1, sto
## if n is even, repeat on n/2
## if n is odd, repeat on 3n+1

def collatz(num)
  return 0 if num == 1

  num.even? ? 1 + collatz(num / 2) : 1 + collatz(3 * num + 1)
end

[1, 2, 3, 4, 5, 6, 7, 8, 15, 27, 50].each do |test|
  puts "Testing #{test}: #{collatz(test)} steps."
end
