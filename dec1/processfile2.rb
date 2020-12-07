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
    while y < limit do
      val3 = Integer(values[y])
      if val3+val2+val == 2020 then
        puts val3*val2*val
      end
      y=y+1
    end
    x=x+1
  end
  z = z+1
end
