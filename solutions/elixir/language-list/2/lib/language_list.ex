defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    list = [language | list] 
  end

  def remove(list) do
    [head | tail ] = list
    list = tail
  end

  def first(list) do
    [head | tail ] = list
    head
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
