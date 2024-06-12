def bubble_sort(unsortedArray)
  loop do
    inversionFlag = false
    unsortedArray.each_with_index do |element, index|
      if index < unsortedArray.length - 1
        if unsortedArray[index] > unsortedArray[index + 1]
          placeHolder = unsortedArray[index]
          unsortedArray[index] = unsortedArray[index + 1]
          unsortedArray[index + 1] = placeHolder
          inversionFlag = true
        end
      end
    end
    unless inversionFlag
      return unsortedArray.to_s
    end
  end
end

