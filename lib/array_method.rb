#mapメソッド
numbers = [1,2,3,4,5]
new_numbers = numbers.map{ |n| n*10}
p new_numbers


#selectメソッド 各要素に対してブロックを評価し戻り値がtrueの要素を返す
numbers = [1,2,3,4,5,6]
even_numbers = numbers.select{ |n| n.even?}
p even_numbers

#rejectメソッド　selectの逆　falseだけを返す
numbers = [1,2,3,4,5,6]
non_multiples_of_three = numbers.reject { |n| n%3 == 0}
p non_multiples_of_three

#findメソッド　trueの最初の要素だけ返す
numbers = [1,2,3,4,5,6]
even_numbers = numbers.find{ |n| n.even?}
p even_numbers

#sumメソッド
numbers = [1,2,3,4]
puts numbers.sum
puts numbers.sum{ |n| n *2}
# 5+1+2+3+4 引数で０以外の初期値を渡す
puts numbers.sum(5)
#文字列を連結
chars = ['a','b','c']
puts chars.sum('')
puts chars.sum('>'){|c| c.upcase }

#joinメソッド
chars = ['a','b','c']
puts chars.join
puts chars.join('-')

#rangeオブジェクト
#..は以下、...は未満
#２番目から４番目の要素を取り出す
a = [1,2,3,4,5]
p a[1..3]

#n以上m以下または未満の判定
#０度以上１００度未満のときは液体
def liquid?(temperature)
  (0...100).include?(temperature)
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
