f = File.open('input')
rules = f.readlines

def rigamaror(bag, rules)
  possible = []
  exitpossible = []
  for rule in rules
  if rule.include? bag
    item = rule.strip.split(' ')
    current = "#{item[0]} #{item[1]}"
    possible.append(current) if current != bag
  end
  end
  for each in possible
    possible+=rigamaror(each, rules)
  end
  return possible
end

puts rigamaror('shiny gold', rules).uniq.size
