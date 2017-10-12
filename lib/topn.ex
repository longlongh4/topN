defmodule Topn do
  @topNValue 10
  
  def get_topn() do
   result = Topn.DataSource.get_data()
      |> Flow.from_enumerable()
      |> Flow.partition()
      |> Flow.reduce(fn -> [] end, &updateTopnList(&1, &2))
      |> Enum.to_list()
      |> sortArray()
      |> Enum.take(@topNValue)
    IO.inspect result
  end

  defp updateTopnList(item, array) do
    newArray = case Enum.reverse(array) do
      x when length(x) < @topNValue -> [item | x]
      [head | tail] when head < item -> [item | tail]
      x -> x
    end
    newArray |> sortArray()
  end

  defp sortArray(array), do: array |> Enum.sort(&(&1 >= &2))
end
