f = File.open("input")

contents=(f.read).split("\n\n")
toto=0

for con in contents
  answers = con.split("\n")
  set1 = (answers[0].strip).split("")
  for answer in answers
    set2 = set1.intersection(answer.strip.split(""))
    set1 = set2
  end
  toto+=set2.size
end
puts toto
