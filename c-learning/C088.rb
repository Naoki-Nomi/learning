# お買い物プログラム

tool_number = gets.to_i
tool = gets.split(" ").map(&:to_i)

input = gets.split(" ").map(&:to_i)
base_money = input[0]
history = input[1]

history.times do |h|
    his = gets.split(" ")
    search_tool = his[0].to_i - 1
    numbers = his[1].to_i
    cost = tool[search_tool] * numbers
    unless base_money < cost
        base_money = base_money - cost
    end
end

# 入力例1
# 3 (アイテム数)
# 10 100 50 (アイテムの金額)
# 300 5 (所持金 買い物回数)
# 1 5 (購入アイテム 個数)
# 2 3
# 3 1
# 2 1
# 1 3

# 出力例1
# 70（残金）