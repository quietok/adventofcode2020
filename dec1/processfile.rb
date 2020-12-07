f = File.open('/usr/home/mouse/adventofcode/dec1/input')
values = f.readlines
z = 0
x = 0
limit = values.length
#puts limit
while z < limit do
  val = Integer(values[z])
  x = 0
  while x < limit do
    val2 = Integer(values[x])
    y = 0
    if val2+val == 2020 then
      puts val2*val
      exit
    end
    x=x+1
  end
  z = z+1
end
