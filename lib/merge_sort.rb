def merge_sort(array)
  return array if array.one?

  left = merge_sort(array[..array.size / 2 - 1])
  right = merge_sort(array[array.size / 2..])

  result = []

  until result.size == array.size
    next result << [left.shift, right.shift].compact[0] if [left[0], right[0]].any?(nil)

    next result << right.shift if right[0] < left[0]

    result << left.shift
  end

  result
end
