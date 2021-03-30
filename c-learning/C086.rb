# ハンドルネームの作成

input_word = gets

vowel_list = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

vowel_list.each do |vowel|
    input_word = input_word.delete(vowel)
end

puts input_word

# 入力例
# Torvalds（母音は取り除く）

# 出力例
# Trvlds
