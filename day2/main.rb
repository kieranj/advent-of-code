file = File.open('input.txt')

depth = 0
horizontal = 0

file.each_line do |line|
  command, value = line.split(' ')

  value = value.to_i

  case command
  when 'up'
    depth -= value
  when 'down'
    depth += value
  when 'forward'
    horizontal += value
  end
end

puts horizontal * depth
