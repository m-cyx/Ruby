str = 'aqAwAeArAtAya'

def z_10 (str)
    a_cnt = str.chars.filter { |i| i =~ /[A]/ }
    return a_cnt.length
end


print(z_10(str))