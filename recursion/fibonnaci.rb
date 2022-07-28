def fibs(num = 0, fibseq = [0, 1])
  return fibseq if num < 2
  fibseq.push(fibseq[-1] + fibseq[-2]) until fibseq.length == num
  fibseq
end

def fibs_rec(num, results = [0, 1])
  num < 2 ? results : fibs_rec(num-1, results.push(results[-1] + results[-2]) )
end
