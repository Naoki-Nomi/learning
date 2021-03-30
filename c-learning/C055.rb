# ログのフィルター

input_number = gets.to_i
important_word = gets.chomp

log = []

input_number.times do |input|
    word = gets.chomp
    if word.include?(important_word)
        log << word
    end
end

if log.empty?
    puts "None"
else
    puts log
end

# 入力例
# 5 入力行数
# ai 検索文字列
# pizza
# paiza
# aizu
# ai
# sai

# 出力例
# paiza
# aizu
# ai
# sai