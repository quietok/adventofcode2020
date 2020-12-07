f = File.open("input")

contents=(f.read).split("\n\n")
toto=0

for con in contents
  toto+=((con.gsub("\n","").strip).split('')).uniq.join.size
end
puts toto
