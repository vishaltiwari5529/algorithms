def pit(arr)
  len=arr.length-1
  p=-1
  q=-1
  r=-1
  depth=-1
  for i in 0...len
    if p<0
      if arr[i]>arr[i+1]
        p=i
        q=i+1
      end
      elsif r<0
      if arr[i]>arr[i+1]
        q+=1
      end
      if arr[i]<arr[i+1]
        r=i+1
      end
      if arr[i]==arr[i+1]
        p=-1
        q=-1
        r=-1
      end
    elsif arr[i]<arr[i+1]
      r+=1
    else
      depth=max(depth,max(arr[p]-arr[q],arr[r]-arr[q]))
      if arr[i]>arr[i+1]
        p=i
        q=i+1
        r=-1
      else
        p=-1
        q=-1
        r=-1
      end
    end
  end
  if r>0
    depth=max(depth,max(arr[p]-arr[q],arr[r]-arr[q]))
  end
  puts depth
end


def max(x,y)
  if x>=y
    return x
  else
    return y
  end
end



arr=[9,8,7,6,5,4,3,2,1,2,3,4,5,6,7,8]

pit(arr)        