# C028 単語テストの採点

@n = gets.to_i

answers = []
students = []


@n.times do
    tmp1, tmp2 = gets.split(" ")
    answers << tmp1
    students << tmp2
end

@points = []

def check(ans, stu)
   i = 0
   @n.times do

      if ans[i] == stu[i]
          @points << 2
      elsif ans[i].length != stu[i].length
          @points << 0
      elsif ans[i].length == stu[i].length
        conp = ans[i].split("").zip(stu[i].split("")).each_with_index.select{|(x,y), i| x!=y}
        if conp.size == 1
            @points << 1
        else
            @points << 0
        end
      end
      i += 1
   end
end

check(answers, students)
puts @points.sum

# 入力例
# 4　（文字数）
# apple aple　（文字数違いは０点）
# orange olange　（1文字違いは1点）
# grape glepe　（2文字違いは０点）
# lemon lemon　（文字数一緒は2点）

# 出力例
# 3　（得点）