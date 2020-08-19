defmodule MyList do
  def len([]),          do: 0
  def len([head|tail]), do: 1 + len(tail)

  def square([]),              do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

end
