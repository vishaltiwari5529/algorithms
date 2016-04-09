# selection sort

def selection_sort(arr)
  len=arr.length
  for i in 0...len
    min=i
    for j in i+1...len
      if arr[min]>arr[j]
        min=j
      end
    end
    swap(arr,i,min)
  end
  return arr
end

  
def swap(arr,i,j)
  temp=arr[i]
  arr[i]=arr[j]
  arr[j]=temp
end


arr=[1,4,2,5,3,7,6,0,10]

selection_sort(arr)