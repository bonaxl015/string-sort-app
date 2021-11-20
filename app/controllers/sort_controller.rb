class SortController < ApplicationController
  include BubbleSort
  include MergeSort

  def index
    if params[:string_input] && params[:strategy]
      @string_in_order = process_string(params[:string_input], params[:strategy])
    end
  end

  def process_string(string, strategy)
    case strategy
    when 'bubblesort'
      bubblesort(string)
    when 'mergesort'
      str_to_ascii = string.chars.map { |x| x.ord }
      str_sorted = sort(str_to_ascii)
      ascii_to_str = str_sorted.map { |x| x.chr }
      ascii_to_str.join
    else
      'Invalid input'
    end
  end
end
