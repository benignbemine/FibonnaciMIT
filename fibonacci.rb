# http://www.codewars.com/kata/53d40c1e2f13e331fc000c26/train/ruby

def fib(n)
  fib_iter(1, 0, 0, 1, n, n.even? && n < 0)
end


def fib_iter(a, b, p, q, n, needs_switch)
  if n == 0
    return needs_switch ? -b : b.abs
  end
  if n.even?
    q_prime = 2*p*q + q**2
    p_prime = q**2 + p**2

    fib_iter(a, b, p_prime, q_prime, n / 2, needs_switch)
  else
    next_n = n <= 0 ? n + 1 : n - 1
    fib_iter(b*q + a*q + a*p, b*p + a*q, p, q, next_n, needs_switch)
  end
end

