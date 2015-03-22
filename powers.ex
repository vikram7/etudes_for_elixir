defmodule Powers do
  import Kernel, except: [raise: 2]

  @doc """
  Raise a number x to an integer power n.
  raise(x, 0) => 1
  raise(x, 1) => x
  raise(x, n) when n > 0 => x * raise(x, n - 1)
  raise(x, n) when n < 0 => 1 / raise(x, -n)
  """
  @spec raise(number(), number()) :: number()

  def raise(_, 0) do
    1
  end

  def raise(x, 1) do
    x
  end

  def raise(x, n) when n > 0 do
    x * raise(x, n - 1)
  end

  def raise(x, n) when n < 0 do
    1 / raise(x, -n)
  end
end
