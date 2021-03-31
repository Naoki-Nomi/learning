# モンスターの進化

input_ability = gets.split(" ").map(&:to_i)

input_number = gets.to_i

answer = []

input_number.times do
    advance = gets.split(" ")
    attack1 = advance[1].to_i
    attack2 = advance[2].to_i
    diffence1 = advance[3].to_i
    diffence2 = advance[4].to_i
    quick1 = advance[5].to_i
    quick2 = advance[6].to_i
    
    if input_ability[0].between?(attack1, attack2) && input_ability[1].between?(diffence1, diffence2) && input_ability[2].between?(quick1, quick2) 
        answer << advance[0]
    end
end

unless answer.empty?
    puts answer
else
    puts "no evolution"
end

# 入力例
# 100 150 200　（与えられる能力値）
# 3
# paizabird 100 200 130 180 80 120 （右から攻撃力、防御、素早さの進化範囲）
# paizawolf 180 220 100 120 90 140
# paizasheep 80 110 150 220 170 250

# 出力例
# paizasheep (ない場合はno evolution)