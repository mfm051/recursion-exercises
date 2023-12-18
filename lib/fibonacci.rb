# iteratively

def fibs(length)
  result = []

  length.times do |num|
    next result << num if (0..1).include? num

    result << result[num - 2] + result[num - 1]
  end

  result
end

# recursively

def fibs_rec(length)
  return (0..length - 1).to_a if length.between?(1, 2)

  fibs_rec(length - 1) << fibs_rec(length - 1).last(2).sum
end
