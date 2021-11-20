module BubbleSort
  def bubblesort(string)
    string_length = string.size
    return string if string_length <= 1
  
    loop do
      swapped = false
      
      (string_length - 1).times do |x|
        if string[x].ord > string[x + 1].ord
          string[x], string[x + 1] = string[x + 1], string[x]
          swapped = true
        end
      end
  
      break if not swapped
    end
    string
  end
end