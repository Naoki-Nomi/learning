q = [*1..600]

p = q.reverse

n = 0
# while g <= 5000
#   x = []
#   g = 0
#   p.each do |p|
#     x << p
#     g = x.sum
#   end
#   n += 1
# end
x = []
p.each do |p|
  x << p
  if x.sum >= 5000
    n += 1  
    x.clear
  end
end

puts n