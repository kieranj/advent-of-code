file = File.open('input.txt')

depth = 0
horizontal = 0
aim = 0

file.each_line do |line|
  command, value = line.split(' ')

  value = value.to_i

# down X increases your aim by X units.
# up X decreases your aim by X units.
# forward X does two things:
# It increases your horizontal position by X units.
# It increases your depth by your aim multiplied by X.

# forward 5 adds 5 to your horizontal position, a total of 5. Because your aim is 0, your depth does not change.
# down 5 adds 5 to your aim, resulting in a value of 5.
# forward 8 adds 8 to your horizontal position, a total of 13. Because your aim is 5, your depth increases by 8*5=40.
# up 3 decreases your aim by 3, resulting in a value of 2.
# down 8 adds 8 to your aim, resulting in a value of 10.
# forward 2 adds 2 to your horizontal position, a total of 15. Because your aim is 10, your depth increases by 2*10=20 to a total of 60.

  case command
  when 'down'
    aim += value
  when 'up'
    aim -= value
  when 'forward'
    horizontal += value
    depth = depth + (value * aim)
  end
end

puts horizontal * depth
