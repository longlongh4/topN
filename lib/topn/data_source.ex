defmodule Topn.DataSource do

  # fake data source
  def get_data() do
    1..10000000 |> Stream.map(fn x -> :rand.uniform(1000000) end)
  end

  # get really data from adapter which implements Topn.DataGrabber behaviour
  def get_data(url, from, to) do
    # get data from central database, eg DynamoDB
    []
  end
end
