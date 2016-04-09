def insertion_sort(arr)
  len=arr.length
  count=0
  for i in 0...len-1
    j=i+1
    while (arr[j-1]>arr[j] && j>0)
      swap(arr,j-1,j)
      count+=1
      j-=1
    end
  end
  return arr,count
end
      
      
=begin       
      func(a,b)
      func a b
      funct (a,b) #this throws arguement error
=end

def swap(arr,i,j)
  temp=arr[i]
  arr[i]=arr[j]
  arr[j]=temp
end

arr=[1,2,6,7,5,7,3,80,90]
insertion_sort arr