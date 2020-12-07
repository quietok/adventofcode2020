f = File.open('input')
lines = f.readlines
spot = 0
treecount=0
for line in lines
  linebits=(line.strip).split('')
  if linebits[spot] == '#' then
    treecount+=1
    linebits[spot] = 'x'
  else
    linebits[spot] = 'o'
  end
  puts linebits.join
  spot+=1
  if spot >= 30
    spot=spot-31
  end
end
puts treecount
t0=treecount
spot=0
treecount=0
for line in lines
  linebits=(line.strip).split('')
  if linebits[spot] == '#' then
    treecount+=1
    linebits[spot] = 'x'
  else
    linebits[spot] = 'o'
  end
  puts linebits.join
  spot+=3
  if spot >= 30
    spot=spot-31
  end
end
puts treecount
t1 = treecount
treecount=0
spot = 0
for line in lines
  linebits=(line.strip).split('')
  if linebits[spot] == '#' then
    treecount+=1
    linebits[spot] = 'x'
  else
    linebits[spot] = 'o'
  end
  puts linebits.join
  spot+=5
  if spot >= 30
    spot=spot-31
  end
end
t2 = treecount
puts treecount
treecount=0
spot = 0
for line in lines
  linebits=(line.strip).split('')
  #puts linebits.size
  #puts linebits[spot]
  #puts spot
  if linebits[spot] == '#' then
    treecount+=1
    linebits[spot] = 'x'
  else
    linebits[spot] = 'o'
  end
  puts linebits.join
  spot+=7
  if spot >= 30
    spot=spot-31
  end
end
puts treecount
t3 = treecount
treecount = 0
linenum = 0
spot = 0
for line in lines
  linebits=(line.strip).split('')
  if linenum%2 == 0 then
  if linebits[spot] == '#' then
    treecount+=1
    linebits[spot] = 'x'
  else
    linebits[spot] = 'o'
  end
  puts linebits.join
  spot+=1
  if spot >= 30
    spot=spot-31
  end
  else
    puts linebits.join
  end
  linenum+=1
end
t4 = treecount
puts treecount

puts t0*t1*t2*t3*t4
