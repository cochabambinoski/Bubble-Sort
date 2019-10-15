def bubble_sort_by(array)
  
  array.each_with_index do |i, index|

    result = yield(array[index-1], i)
    
    if index == 0 then next
    elsif result > 0
      array[index-1],array[index] = array[index], array[index-1]
    end
    
  end
array
end


bubble_sort_by(["hi","hello", "hey"]) do |left,right|
  left.length - right.length
end

#["hi", "hey", "hello"]