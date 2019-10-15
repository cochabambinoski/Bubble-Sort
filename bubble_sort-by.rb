def bubble_sort_by(arr)
    if block_given?
        swap = -1
        #bubble sort functionality
        while swap != 0
            swap = 0
            for i in 0..(arr.length - 2) do
    
                if (yield(arr[i], arr[i+1]) > 0)
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    swap += 1
                end
    
            end
        end

    else
        arr.sort
    end
    puts "--------------"
    output = arr.join(", ")
    puts "[#{output}]"
end
