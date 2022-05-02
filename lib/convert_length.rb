# フィート１ft=３.２８m     インチ 1in =39.37m
#変換前の単位の長さ　/ 変換前の単位の比率　* 変換後の単位の比率
#round(2)で小数点第３位を四捨五入
UNITS = {m: 1.0, ft: 3.28, in: 39.37}
def convert_length(length, from: :m, to: :m)
  (length/ UNITS[from]* UNITS[to]).round(2)
end
