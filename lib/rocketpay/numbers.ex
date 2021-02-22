defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
   file = File.read("#{filename}.csv")
   handle_file(file)
  end

  defp handle_file({:ok, file}) do
    file = file
          |> String.split(",")
          |> Enum.map( fn number ->
                        number
                        |> String.to_integer
          end)
          |> Enum.sum

      {:ok, %{result: file}}
  end

  defp handle_file({:error, _file}) do
    {:error, %{message: "Invalid File!"}}
  end
end
