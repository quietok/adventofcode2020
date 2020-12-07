f = File.open('input')
items = f.readlines
valid = 0
for item in items
  specification, password = item.split(':')
  count,letter = specification.split
  letter = letter.chomp
  count = count
  range = count.split('-')
  lower = Integer(range[0])-1
  upper = Integer(range[1])-1
  letters = (password.strip).split('')
  if (letters[upper] != letter and letters[lower] == letter ) then
    valid+=1
  elsif (letters[lower] != letter and letters[upper] == letter) then
    valid+=1
  end

end
  
puts valid
