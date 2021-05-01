defmodule Fizzbuzz do
  def isFizzOrBuzz(n_input) do
    {_, _} = {rem(n_input, 3), rem(n_input, 5)}
  end

  def cycleThroughRange() do
    for n <- 1..100 do
      case Fizzbuzz.isFizzOrBuzz(n) do
        {0, 0} -> "FizzBuzz"
        {0, _} -> "Fizz"
        {_, 0} -> "Buzz"
        {_, _} -> n
      end
    end
  end
end
