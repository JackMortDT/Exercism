defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    count_letters( strand, nucleotide, 0 )
  end

  defp count_letters( [], _nucleotide, number), do: number
  defp count_letters( strand, nucleotide, number) do
    [ comparate_letter | rest ] = strand
    number = if (comparate_letter == nucleotide) do number + 1 else number end
    count_letters( rest, nucleotide, number )
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
  end
end
