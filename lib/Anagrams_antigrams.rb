#! usr/bin/env ruby

class Anagrams_antigrams

  def anagram?(word1,word2)
    origin1 = word1
    origin2 = word2
    word1 = word1.downcase.gsub(/[^a-z0-9]/i, '')
    word2 = word2.downcase.gsub(/[^a-z0-9]/i, '')
    word1 = word1.chars.sort.join
    word2 = word2.chars.sort.join

    if word1 == word2 && origin1 != origin2
      return true #"These words are anagrams"
    else
      return false
    end
  end

  def antigram?(word1,word2)
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
      return true #"These words are antigrams"
    else
      return false
    end
  end

  def palindrome?(word1,word2)
    if word1 != word2
      return false
    end

    if word1.reverse == word1
      return true #"These words are palindromes"
    else
      return false
    end
  end

  def isWord?(word1,word2)
    if (word1.scan(/[aeiou]/)).length == 0 || (word2.scan(/[aeiou]/)).length == 0
      return false
    else
      return true
    end
  end

  def allOutcome(word1,word2)
    if !(isWord?(word1,word2))
      return "You entered one or more words that are not words"
    elsif palindrome?(word1,word2)
      return "These words are palindromes"
    elsif anagram?(word1,word2)
      return "These words are anagrams"
    elsif antigram?(word1,word2)
      return "These words are antigrams"
    else
      return "These words are not palindromes, anagrams, or antigrams"
    end

  end

end
