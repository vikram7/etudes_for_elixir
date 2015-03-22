# defmodule Dijkstra do

#   def gcd(m, n) when m == n do
#     m
#   end

#   def gcd(m, n) when m > n do
#     gcd(m - n, m)
#   end

#   def gcd(m, n) do
#     gcd(m, n - m)
#   end

# end

defmodule Dijkstra do
  @doc '''
  calculate greatest common divisor of two number
  using dijkstra's algorithm
  '''
  @spec gcd(number(), number()) :: number()

  def gcd(m, n) do
    cond do
      m == n -> m
      m > n -> gcd(m - n, m)
      true -> gcd(m, n - m)
    end
  end

end
