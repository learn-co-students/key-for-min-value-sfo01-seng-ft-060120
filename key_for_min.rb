# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  # separate the keys
  keys = []
  name_hash.each do |k, v|
    keys.push(k)
  end

  # initialize "smallest" as first element of keys array
  smallest_v = name_hash[keys[0]]
  smallest_k = keys[0]

  # compare values, assign smallest k/v pair when appropriate
  keys.each do |k|
    if name_hash[k] < smallest_v
      smallest_v = name_hash[k]
      smallest_k = k
    end
  end

  # return smallest key
  smallest_k
end
