defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    after_disc = before_discount * (1.0 - (discount/100))
  end

  def monthly_rate(hourly_rate, discount) do
    trunc(Float.ceil(apply_discount(hourly_rate * 8 * 22, discount)))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    money_daily = daily_rate(hourly_rate)
    af_disc = apply_discount(money_daily, discount)
    Float.floor(budget/af_disc, 1)
  end
end
