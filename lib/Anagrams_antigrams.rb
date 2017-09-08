#! usr/bin/env ruby

class Anagrams_antigrams

  # def highestCount(hash)
  #   hash.max_by{|k,v| v}
  # end

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
    word1 = word1.downcase.gsub(/[^a-z0-9]/i, '')
    word2 = word2.downcase.gsub(/[^a-z0-9]/i, '')
    word1 = word1.split("").sort
    word2 = word2.split("").sort
    both = (word1 + word2).sort

    count1 = Hash.new 0
    word1.each do |letter|
      count1[letter] += 1
    end
    count2 = Hash.new 0
    word2.each do |letter|
      count2[letter] += 1
    end
    addAll = count1.merge(count2)
    if count1.length + count2.length == addAll.length
      return "These words are antigrams"
    else
      return "These words are not antigrams"
    end
  end

  def palindrome(word1,word2)

  end

  def isWord?(word1,word2)

  end
end
