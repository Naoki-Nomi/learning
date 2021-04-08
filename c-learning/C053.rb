# カードの合計

n = gets.to_i

tmp = []
tmp = gets.split(" ")

numbers = []
multipple = []
makezero = []

tmp.each do |t|
    if t == "x10"
        multipple << t
    elsif t == "0"
        makezero << t
    else
        numbers << t.to_i
    end
end

numbers = numbers.sort

unless makezero.empty?
    i = makezero.size
    numbers.slice!(-i..-1)
end

unless multipple.empty?
    puts numbers.sum * 10
else
    puts numbers.sum
end

# 入力例
# 6（）
# 0 10 x10 1 5 3 (カードの番号、0の数で最高点を引く、x10がある場合は10倍する)
# 出力例
# 90（合計点）
