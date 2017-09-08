#! usr/bin/env ruby

class Anagrams_antigrams
  def anagram(word1,word2)
    origin1 = word1
    origin2 = word2
    word1 = word1.downcase.gsub(/[^a-z0-9]/i, '')
    word2 = word2.downcase.gsub(/[^a-z0-9]/i, '')
    word1 = word1.chars.sort.join
    word2 = word2.chars.sort.join

    if word1 == word2 && origin1 != origin2
      return "These words are anagrams"
    else
      return "These words are not anagrams"
    end
  end

  def antigram(word1,word2)

  end

  def palindrome(word1,word2)

  end
end
