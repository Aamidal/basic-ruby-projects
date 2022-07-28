## if n = 1, sto
## if n is even, repeat on n/2
## if n is odd, repeat on 3n+1

def collatz(n, steps = 1)
  return "Steps: #{steps}" if n == 1
  n.even? ? collatz(n/2, steps+1) : collatz(3*n+1, steps+1)
end