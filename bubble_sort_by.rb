# frozen_string_literal: true

def bubble_sort_by(arr)
    if block_given?
        swap = -1
        while swap != 0
            swap = 0
            (0..(arr.length - 2)).each do |i|
                if yield(arr[i], arr[i + 1]).positive?
                    arr[i], arr[i + 1] = arr[i + 1], arr[i]
                    swap += 1
                end
            end
        end
    else
        raise "no block"
    end
    arr
end
