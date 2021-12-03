require 'enumerator'

count = 0
file = File.open('input.txt')

lines = file.readlines.map(&:chomp).map(&:to_i)

lines.each_with_index do |x, index|
  next if index == 0
  if x > lines[index - 1]
    count += 1
  end
end

p count
