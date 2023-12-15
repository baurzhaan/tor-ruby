=begin https://www.theodinproject.com/lessons/ruby-bubble-sort
  Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
  > bubble_sort([4,3,78,2,0,2])
  => [0,2,2,3,4,78]
=end

def bubble_sort(arr)
  0.upto(arr.length - 2) do |index|
    (index + 1).upto(arr.length - 1) do |sub_index|
      arr[index], arr[sub_index] = arr[sub_index], arr[index] if arr[index] > arr[sub_index] 
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([5,1,4,2,8])