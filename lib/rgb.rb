#to_hexは１０進数を１６進数に変換するメソッド
#to_sは１６進数に変換する
#rjustメソッドは右揃えにする

# def to_hex(r,g,b)
#   '#'+
#   r.to_s(16).rjust(2,'0')+
#   g.to_s(16).rjust(2,'0')+
#   b.to_s(16).rjust(2,'0')
# end


#リファクタリング

def to_hex(r,g,b)
  [r,g,b].sum('#') do |n|
     n.to_s(16).rjust(2,'0')
  end
end

#to_intsメソッドは１６進数を１０進数に変換するメソッド

def to_ints(hex)
  #範囲オブジェクトで３つの１６進数を抜き出す
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  #配列に入れて１０進数の整数に変換した値を別の配列に詰め込む
  # ints = []
  # [r,g,b].each do |s|
  #   ints << s.hex
  # end

  #mapメソッドで置き換える
  [r,g,b].map do |s|
    s.hex
  end
end

#リファクタリング
#scanメソッドは正規表現にマッチした文字列を配列にして返す
# def to_ints(hex)
#   hex.scan(/\w\w/).map(&:hex)
# end