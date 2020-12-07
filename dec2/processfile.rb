f = File.open('input')
items = f.readlines
valid = 0
for item in items
  specification, password = item.split(':')
  count,letter = specification.split
  letter = letter.chomp
  count = count
  range = count.split('-')
  lower = Integer(range[0])
  upper = Integer(range[1])
  letters = (password.strip).split('')
  letter_tally = letters.tally
  if letter_tally.has_key? letter then
    if letter_tally[letter] >= lower and letter_tally[letter] <= upper
      valid+=1
    end
  end
end
  
puts valid
