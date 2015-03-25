defmodule Dates do
  def date_parts(date) do
    [year, month, day] = String.split(date, "-")
    [String.to_integer(year), String.to_integer(month), String.to_integer(day)]
  end

  @spec julian(String.t) :: number

  def julian(date) do
    [year, month, day] = date_parts(date)
    days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    total_days = month_total(month, days_per_month, 0) + day
    cond do
      is_leap_year(year) and month > 2 -> total_days + 1
      true -> total_days
    end
  end

  @spec month_total(number, [number], number) :: number

  def month_total(1, _days_per_month, total) do
    total
  end

  def month_total(month, [h | t], total) do
    month_total(month - 1, t, total + h)
  end

  defp is_leap_year(year) do
    (rem(year,4) == 0 and rem(year,100) != 0)
    or (rem(year, 400) == 0)
  end

end
