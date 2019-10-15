def bubble_sort(arr)
    swap = -1
    while swap != 0
        swap = 0
        for i in 0..(arr.length - 2) do

            if (arr[i] > arr[i+1])
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swap += 1
            end

        end
    end
    output = arr.join(", ")
    return "[#{output}]"
end

puts "Enter a list of numbers separated by a single space and we will have that sorted"
arr = gets.chomp.split(" ")
arr = arr.map {|num| num.to_i}
puts bubble_sort(arr)