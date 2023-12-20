class Array
  def split_in_half
    half_index = size / 2.0

    left = first(half_index.floor)
    right = last(half_index.ceil)

    [left, right]
  end

  def merge_sort
    return self if one?

    left, right = split_in_half.map(&:merge_sort)

    result = []

    until result.size == size
      next result << [left.shift, right.shift].compact[0] unless [left[0], right[0]].all?

      next result << right.shift if right[0] < left[0]

      result << left.shift
    end

    result
  end
end
