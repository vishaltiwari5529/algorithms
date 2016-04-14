def max_subarray arr
    max_so_far=0
    max_ending_here=0
    for i in 0..arr.length-1
    max_ending_here=max_ending_here+arr[i]
    if max_ending_here<0
        max_ending_here=0
    end
    if max_ending_here>max_so_far
        max_so_far=max_ending_here
    end
end
return max_so_far
end

arr=[6,2,3,-10,12,3,7]
puts max_subarray arr