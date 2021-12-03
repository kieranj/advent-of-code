require 'enumerator'

file = File.open('input.txt')

lines = file.readlines.map(&:chomp).map(&:to_i)

lines.each_slice(2) do |x|
  
end