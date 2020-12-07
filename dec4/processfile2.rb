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
    
    
    if hashe["byr"].size == 4 then
      byr = Integer(hashe["byr"])
    if byr >= 1920 and byr <= 2002 then
      byrval = true
    else
      byrval = false
    end
    else
      byrval = false
    end

    if hashe["iyr"].size == 4 then
      iyr = Integer(hashe["iyr"])
    if iyr >= 2010 and iyr <= 2020 then
      iyrval = true
    else
      iyrval = false
    end
    else
      iyrval = false
    end
    
    if hashe["eyr"].size == 4 then
      eyr = Integer(hashe["eyr"])
    if eyr >= 2020 and eyr <= 2030 then
      eyrval = true
    else
      eyrval = false
    end
    else
      eyrval = false
    end

    if (hashe["ecl"] == 'amb' or hashe["ecl"] == 'blu') or (hashe["ecl"] == 'brn' or hashe["ecl"] == 'gry') or (hashe["ecl"] == 'grn' or hashe["ecl"] == 'hzl') or hashe["ecl"] == 'oth' then
      eclval = true
    else
      eclval = false
    end
    if hashe["pid"].size == 9 and hashe["pid"] =~ /[0-9]+$/
      pidval = true
    else
      pidval = false
    end
    z = hashe['hgt'].split('')
    format = z[-2..-1].join
    if format == "cm" then
      vally  = Integer(z[0..-3].join)
      if vally >= 150 and vally <= 193 then
        hgtval = true
      else
        hgtval = false
      end
    elsif format == "in" then
      vally  = Integer(z[0..-3].join)
      if vally >= 59 and vally <= 76 then
        hgtval = true
      else
        hgtval = false
      end
    else
      hgtval = false
    end
    hcl = hashe['hcl'].strip
    if hcl.size == 7 and hcl[0] == '#' then
      hcl = hcl[1..-1]
      if hcl =~ /[A-Fa-f0-9]+$/ then
        hclval = true
      else
        hclval = false
      end
    else
      hclval = false
    end
    if eyrval and iyrval and byrval and eclval and pidval and hgtval and hclval then
      valid+=1
    end
  end
end

puts valid
#puts possible_passports.size



