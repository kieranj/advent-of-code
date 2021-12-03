file = File.open('input.txt')

bits = []

def calculate_rate(input, type)
  rate = input.map { |i| i.tally.public_send(type) { |a,b| a[1] <=> b[1] }[0] }.flatten.join

  to_binary(rate)
end

def to_binary(x)
  x.reverse.chars.map.with_index do |digit, index|
    digit.to_i * 2**index
  end.sum
end

file.each_line do |line|
  line.chomp.split('').map(&:to_i).each_with_index do |i, index|
    bits[index] ||= []
    bits[index] << i
  end
end

gamma_rate = calculate_rate(bits, :max)
epsilon_rate = calculate_rate(bits, :min)

puts gamma_rate * epsilon_rate

