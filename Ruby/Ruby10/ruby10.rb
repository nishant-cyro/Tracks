require_relative 'hasharray'

def making_hash

  hash_input = HashArray.new(["abc", "def", 67, 9, "abcdy"])
  puts hash_input.make_hash
end

making_hash