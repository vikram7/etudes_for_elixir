defmodule Dates do
  def date_parts(date) do
    [year, month, day] = String.split(date, "-")
    [String.to_integer(year), String.to_integer(month), String.to_integer(day)]
  end

  @spec julian(String.t) :: number

  def julian(date) do
    [year, month, day] = date_parts(date)
    days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  end

  def month_total(month, days_per_month, total) do

  end

  defp is_leap_year(year) do
    (rem(year,4) == 0 and rem(year,100) != 0)
    or (rem(year, 400) == 0)
  end

end
