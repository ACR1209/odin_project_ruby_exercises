def bubble_sort(arr)
  swapped = true
  while swapped
      swapped = false
      for i in 1..(arr.size-1)
        if arr[i-1] > arr[i]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          swapped = true
        end
      end
  end
  arr
end

pp bubble_sort([4,3,78,2,0,2])
