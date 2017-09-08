class Anagrams_antigrams
  def anagram(word1,word2)
    if word1.length != word2.length
      return false
    end
    word1 = word1.downcase.gsub(/[^a-z0-9]/i, '')
    word2 = word1.downcase.gsub(/[^a-z0-9]/i, '')
    sameLetterCount = 0

    word1.each do |letter|
      for i in 0..word2.length-1 do
        if letter == word2[i]
          sameLetterCount +=1
        end
      end
    end
    if sameLetterCount == word1.length
      return true
    end
  end

  def antigram(word1,word2)

  end

  def palindrome(word1,word2)

  end
end
