# ミニコンピュータ

dir_number = gets.to_i

var1 = 0
var2 = 0

dir_number.times do
   temp = gets.split(" ")
   if temp[0] == "SET" && temp[1] == "1"
       var1 = temp[2].to_i
   elsif temp[0] == "SET" && temp[1] == "2"
       var2 = temp[2].to_i
   elsif temp[0] == "ADD"
       var2 = var1 + temp[1].to_i
   elsif temp[0] == "SUB"
       var2 = var1 - temp[1].to_i
   end
end

puts var1.to_s + " " + var2.to_s

# 入力例1
# 3
# SET 1 10 (1は変数1)
# SET 2 20 (2は変数2)
# ADD 40

# 出力例1
# 10 50 (変数1と2を出力)