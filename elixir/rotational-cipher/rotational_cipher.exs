defmodule RotationalCipher do

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    charlist_text = text |> to_charlist
    get_text( charlist_text, shift, "" )
  end

  defp get_text( [], _shift, text ), do: text
  defp get_text( charlist_text, shift, text ) do
    [letter | rest] = charlist_text
    letter = get_letter( letter, shift )
    text = text <> to_string([letter])
    get_text( rest, shift, text )
  end

  defp get_mayus_letter( result_letter ) when result_letter > 90, do: result_letter - 26
  defp get_mayus_letter( result_letter ), do: result_letter

  defp get_minus_letter( result_letter ) when result_letter > 122, do: result_letter - 26
  defp get_minus_letter( result_letter ), do: result_letter

  defp get_letter( letter, shift ) when letter > 64 and letter < 91, do: get_mayus_letter( letter + shift )
  defp get_letter( letter, shift ) when letter > 96 and letter < 123, do: get_minus_letter( letter + shift )
  defp get_letter( letter, _shift ), do: letter

end
