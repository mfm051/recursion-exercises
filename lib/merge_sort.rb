class Array
  def split_in_half
    half_index = size / 2.0

    left = first(half_index.floor)
    right = last(half_index.ceil)

    [left, right]
  end

  def merge(sorted_array)
    comparison = sorted_array.dup

    merged = []

    each do |i|
      merged << comparison.shift until comparison.empty? || comparison[0] > i

      merged << i
    end

    merged.append(comparison).flatten
  end

  def merge_sort
    return self if one?

    left, right = split_in_half.map(&:merge_sort)

    left.merge(right)
  end
end
