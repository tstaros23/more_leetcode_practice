def remove_duplicates(nums)
    length = nums.length
    if length == 0 || length == 1
        return length
    end
    i = 0
    var = 0
    k = 0
    while i < nums.length do
      if i != 0 && nums[i] == var
        nums[i] = nil
        i += 1
      else
        var = nums[i]
        k += 1
        i += 1
      end
    end

    current_index = 0
    counter = 0
    j = 0
    while j < nums.length do
      if nums[j] != nil && counter != j
        nums[counter] = nums[j]

        nums[j] = nil
        counter += 1
      else if nums[j] != nil
        counter += 1
        j += 1
      else
        j += 1
      end
    end
  end
  return k
end
nums = [0,0,1,1,1,2,2,3,3,4]
nums2 = [1,1,2]
nums3 = [1,2]
remove_duplicates(nums2)
