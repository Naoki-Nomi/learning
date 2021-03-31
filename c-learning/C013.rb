# 嫌いな数字

dislike_number = gets.chomp
room_numbers = gets.to_i

okay_rooms = []

room_numbers.times do |room| 
    input_rooms = gets
    unless input_rooms.include?(dislike_number)
        okay_rooms << input_rooms
    end
end

if okay_rooms.empty?
    puts "none"
else
    puts okay_rooms
end

# 入力例1
# 4 (嫌いな数字)
# 5 (与えられるルームナンバー数)
# 101
# 204
# 301
# 401
# 501

# 出力例1　（ない場合はnoneを返す）
# 101
# 301
# 501