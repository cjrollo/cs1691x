def sum_to_n?(ary, val)
  # YOUR CODE 
    ary.product(ary).any? {|couple| couple.sum == val}
end

#      expect(sum_to_n?([-1,-2,3,4,5,-8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
#      expect(sum_to_n?([-1,-2,3,4,6,-8], 12)).to be false # no two elements that sum

sum_to_n?([-1,-2,3,4,6,-8], 12)
