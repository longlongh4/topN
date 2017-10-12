defmodule Topn.DataGrabber do
    @callback grab_data(String.t, integer, integer) :: {:ok, Stream.t} | {:error, String.t}
end
