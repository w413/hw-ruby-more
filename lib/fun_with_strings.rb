module FunWithStrings
  # Removes non-alpha characters with #.gsub
  # Reverses the string from #.gsub converts to lower
  #   and checks against downcase original
  def palindrome?
    str = self.gsub(/\W/, '')
    str.reverse.downcase == str.downcase
  end
  # Creates an empty hash
  # scans self for letter groups of any size
  # Iterates through array of found letter groups,
  #   assigns the letter group a hash key, counts occurances,
  #   and increments the letter group's hash value
  # returns the hash count_hash
  def count_words
    count_hash = Hash.new(0)
    word_array = self.scan(/\w+/)
    word_array.each { |word| count_hash[word.downcase] += 1}    
    count_hash
  end
  # Creates a hash of arrays
  # Scans self for letter groups of any size
  # Orders characters of letter groups to be used as hash keys
  # Assigns words to appropriate hash keys (e.g. 'tape' & 'peat' are
  #   assigned to hash key 'aept')
  # Clears word_array for use as ret value
  # iterates through hash assigning each index of word_array a anagram_group
  def anagram_groups
    word_hash = Hash.new {|h,k| h[k]=[]}
    word_array = self.scan(/\w+/)
    word_array.each { |word| word_hash[word.downcase.chars.sort.join] << word }
    word_array.clear
    word_hash.each { |key, value| word_array.push(value)}
    word_array
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end