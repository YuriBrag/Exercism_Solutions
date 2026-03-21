defmodule Secrets do
  def secret_add(secret) do
    fn prev_secret -> prev_secret + secret end
  end

  def secret_subtract(secret) do
    fn prev_sec -> prev_sec - secret end
  end

  def secret_multiply(secret) do
    fn mult_sec -> mult_sec * secret end
  end

  def secret_divide(secret) do
    fn div_sec -> trunc(div_sec / secret) end
  end

  def secret_and(secret) do
    fn and_sec -> Bitwise.band(and_sec, secret) end
  end

  def secret_xor(secret) do
    fn and_sec -> Bitwise.bxor(and_sec, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn comb_sec -> secret_function1.(comb_sec) |> secret_function2.() end
  end
end
