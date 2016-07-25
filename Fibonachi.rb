def fibonacci number
  fib=[1,1]
  time=number-2
    time.times do
      value= fib[fib.length-1]+fib[fib.length-2]
      fib << value
    end
    return fib
  end
