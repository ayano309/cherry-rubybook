#divmodメソッドは商と余りを配列で返す
p 14.divmod(3)

#戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商 = #{quo_rem[0]}, 余り = #{quo_rem[1]}"

#多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
puts "商 = #{quotient}, 余り = #{remainder}"


#配列から値が２の要素を削除する
a = [1,2,3,1,2,3]
a.delete(2)
p a

# 配列から値が奇数の要素を削除する
a = [1,2,3,1,2,3]
#delete_ifメソッドを使う
a.delete_if do |n|
  n.odd?
end
p a

#偶数なら値を１０倍にする
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n*10 : n
  sum += sum_value
end
puts sum
