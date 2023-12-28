def longest_common_prefix(strs)
    if strs.length == 1
      return strs[0]
    end
    min = strs.min_by do |str|
      str.length
    end
    loop_count = strs.length * min.length
    i = 0
    j = 0
    m = 0
    string = ""
    last = ""
    result = ""
    # hash keys are the strings and values are char arrays
    hash = {}
    strs.map do |str|
      hash[str] = str.split("")
    end

    min_length = min.length - 1
    while i <= loop_count do
        if j == strs.length - 1
          # if j is at the last string
            last = hash[strs[j]][m]
            if string != last
              return result

            else
                result += last
                m += 1
                j = 0
            end
        else if j == 0
            string = hash[strs[j]][m]

            j += 1
            i += 1
        else
          j += 1
        end
      i += 1
    end
  end
    return result
end
strs = ["flower","flow","flight"]
strs2 = ["c","acc","ccc"]
longest_common_prefix(strs2)
