def merge_sort(arr,lo,hi)
  
  if lo<hi
    mid=lo+(hi-lo)/2
    merge_sort(arr,lo,mid)
    merge_sort(arr,mid+1,hi)
    merge(arr,lo,mid,hi)
  end
  
end

def merge(arr,lo,mid,hi)
  arrl=[]
  for i in lo..hi
    arrl[i]=arr[i]
  end
  p=lo
  j=mid+1
  k=lo
  
  
  while k<=hi
    
    if p>mid
      arr[k]=arrl[j]
      k+=1
      j+=1
      elsif j>hi
      arr[k]=arrl[p]
      k+=1
      p+=1
    elsif arrl[p]<arrl[j]
      arr[k]=arrl[p]
      k+=1
      p+=1
    else 
      arr[k]=arrl[j]
      k+=1
      j+=1
    end
  end
end



arr=[1,3,5,8,2,90,1,7,9]
merge_sort(arr,0,8)
puts arr