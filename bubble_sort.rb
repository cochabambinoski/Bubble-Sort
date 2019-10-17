# frozen_string_literal: true

def bubble_sort(arr)
    swap = -1
    while swap != 0
        swap = 0
        (0..(arr.length - 2)).each do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swap += 1
            end
        end
    end
    arr
end
