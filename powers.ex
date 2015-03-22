defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  @spec raise(number(), number()) :: number()

  def raise(_, 0) do
    1
  end

  def raise(x, 1) do
    x
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  def raise(_, 0, accumulator) do
    accumulator
  end

  def raise(x, n, accumulator) do
    raise(x, n - 1, x * accumulator)
  end

end
