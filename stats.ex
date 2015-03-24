defmodule Stats do

  @spec minimum([number]) :: number()

  def minimum(list) do
    [h | t] = list
    minimum(t, h)
  end

  defp minimum([], number) do
    number
  end

  defp minimum([h | t], number) when h < number do
     minimum(t, h)
  end

  defp minimum([h | t], number) when h > number do
    minimum(t, number)
  end

  @spec maximum([number]) :: number()

  def maximum(list) do
    [h | t] = list
    maximum(t, h)
  end

  defp maximum([], number) do
    number
  end

  defp maximum([h | t], number) when h > number do
    maximum(t, h)
  end

  defp maximum([h | t], number) when h < number do
    maximum(t, number)
  end

  @spec range([number]) :: [number]

  def range(list) do
    [minimum(list), maximum(list)]
  end

end
