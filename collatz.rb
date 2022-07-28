## if n = 1, sto
## if n is even, repeat on n/2
## if n is odd, repeat on 3n+1

def collatz(n)
  return 0 if n == 1
  n.even? ? 1 + collatz(n/2) : 1 + collatz(3*n+1)
end

[1, 2, 3, 4, 5, 6, 7, 8, 15, 27, 50].each do |test|
  puts "Testing #{test}: #{collatz(test)} steps."
end