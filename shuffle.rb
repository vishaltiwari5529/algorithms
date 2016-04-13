
def shuffle arr
  len=arr.length-1
  
  for i in (len).downto(1)
    j=Random.rand(i+1)
    swap(arr,i,j)
  end
  arr
end

def swap(arr,x,y)
  temp=arr[x]
  arr[x]=arr[y]
  arr[y]=temp
end


arr=[1,2,3,4,5,6]
shuffle(arr)
