def bubble_sort(arr)
  len=arr.length
  for i in 0...len
    for j in 0...len-i-1
      if arr[j]>arr[j+1]
        swap(arr,j,j+1)
        
      end
     
    end
  end
  return arr
end

def swap(arr,i,j)
  temp=arr[i]
  arr[i]=arr[j]
  arr[j]=temp
end



arr=[0,3,56,65,45,2,1,354]

bubble_sort(arr)
