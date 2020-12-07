f = File.open("input")

rules = f.readlines
ruledict = {}
total = 0

for rule in rules
  srule = rule.split('contain')
  conts = srule[1].split(',')
  ssrule = srule[0].split(' ')
  bagnameo = "#{ssrule[0]} #{ssrule[1]}"
  ruledict[bagnameo] = {}
  for cont in conts
    cont = cont.strip
    unless cont == "no other bags."
      bits = cont.split(' ')
      bagname = "#{bits[1]} #{bits[2]}" 
      ruledict[bagnameo][bagname] = Integer(bits[0].strip)
    end
  end
end


def rigamaroo( bag, ruledict, multiplyer )
  bagcounts=[]
  val = 0
  vals = []
  keyss=[]
  ruledict[bag].each do | key, value |
    bagcounts.append(value*multiplyer)
    keyss.append([key,value])
  end
  for k in keyss do
    bagcounts.append(( rigamaroo( k[0], ruledict,k[1] )*multiplyer))
  end
  return bagcounts
end

puts rigamaroo('shiny gold', ruledict, 1).flatten.each { |z| total+=z }
puts total
