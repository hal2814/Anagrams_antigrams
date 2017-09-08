#! usr/bin/env ruby

class Anagrams_antigrams
  def anagram(word1,word2)
    if word1.length != word2.length
      return "These words are not anagrams"
    end
    word1 = word1.downcase.gsub(/[^a-z0-9]/i, '')
    word2 = word2.downcase.gsub(/[^a-z0-9]/i, '')
    sameLetterCount = 0
    word1 = word1.chars.sort.join
    word2 = word2.chars.sort.join

    if word1 == word2
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
