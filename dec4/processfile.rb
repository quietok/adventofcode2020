f = File.open('input')
possible_passports = f.read.split("\n\n")
valid=0
for pp in possible_passports
  pp.sub!("\n", " ")
  items = pp.split(" ")
  hashe = {}
  for item in items
    bits = item.split(':')
    hashe[bits[0].strip] = bits[1].strip
  end
  if (hashe.has_key? "byr" and hashe.has_key? "iyr") and (hashe.has_key? "eyr" and hashe.has_key? "hgt") and (hashe.has_key? "hcl" and hashe.has_key? "ecl") and hashe.has_key? "pid" then
    valid+=1
  end
end

puts valid
#puts possible_passports.size



