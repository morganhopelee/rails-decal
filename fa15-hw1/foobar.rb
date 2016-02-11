class Foobar
  # Q4 CODE HERE
  def self.baz(list)
		new_list = []
		sum = 0
		for value in list
			new_val = value.to_i + 2
			if new_val.even? && new_val < 10 && !new_list.include?(new_val)
				new_list.push(new_val)
				sum += new_val
			end
		end
		return sum
	end
end