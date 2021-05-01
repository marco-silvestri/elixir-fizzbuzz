defmodule Fizzbuzz do
  def isFizzOrBuzz(n_input) do
    {_, _} = {rem(n_input, 3), rem(n_input, 5)}
  end

  def cycleThroughRange() do
    for n <- 1..100 do
      case Fizzbuzz.isFizzOrBuzz(n) do
        {x, y} when x === 0 and y !== 0 -> "Fizz"
        {x, y} when x !== 0 and y === 0 -> "Buzz"
        {x, y} when x === 0 and y === 0 -> "FizzBuzz"
        {x, y} when x !== 0 and y !== 0 -> n
      end
    end
  end
end
