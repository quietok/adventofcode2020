f = File.open("input")
codes = f.readlines

codenid={}
seatids=[]
for code in codes
  ranger = *(0..127)
  if code[0] == 'F'
    vals = ranger[0,64]
  else
    vals = ranger[64,128]
  end
  if code[1] == 'F'
    vals = vals[0,32]
  else
    vals = vals[32,64]
  end
  if code[2] == 'F'
    vals = vals[0,16]
  else
    vals = vals[16,32]
  end
  if code[3] == 'F'
    vals = vals[0,8]
  else
    vals = vals[8,16]
  end
  if code[4] == 'F'
    vals = vals[0,4]
  else
    vals = vals[4,8]
  end
  if code[5] == 'F'
    vals = vals[0,2]
  else
    vals = vals[2,4]
  end
  if code[6] == 'F'
    row = vals[0]
  else
    row = vals[1]
  end
  colranger = *(0..7)
  if code[7] == 'L'
    vals = colranger[0,4]
  else
    vals = colranger[4,8]
  end
  if code[8] == 'L'
    vals = vals[0,2]
  else
    vals = vals[2,4]
  end
  if code[9] == 'L'
    collumn = vals[0]
  else
    collumn = vals[1]
  end
  seatids.append( (row*8)+collumn )
end

final = seatids.sort
puts final[-1]

count=85
for f in final
  if f != count
    puts f
    puts count
    count+=2
  else
    count+=1
  end
end

puts final
