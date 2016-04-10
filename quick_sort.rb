def quick_sort(arr,lo,hi)
  if lo<hi
    p=partition(arr,lo,hi)
    quick_sort(arr,lo,p-1)
    quick_sort(arr,p+1,hi)
  end
  return arr
end


def partition(arr,lo,hi)
  pivot=arr[lo]
  i=lo+1
  j=hi
  while true
    while (pivot >= arr[i]) && (i<hi)
      i+=1
    end
    while (pivot<arr[j]) && (j>=lo)
      j-=1
    end
    break if i>=j
    swap(arr,i,j)
    
  end
    swap(arr,lo,j)
    return j
end

def swap(arr,i,j)
  arr[i],arr[j]=arr[j],arr[i]
end
arr=[12,3,4,5,13,34,1,2,7,2]
quick_sort(arr,0,9)