require('rspec')
require('Anagrams_antigrams')
require('pry')

describe('Anagrams_antigrams') do
  check = Anagrams_antigrams.new()
  it("Will check to see if two words provided contain exact same letters, but in differrent orders") do
    expect(check.anagram("aligned","dealing")).to(eq("These words are anagrams"))
  end

  it("Will check to see if two words provided contain exact same letters, but in differrent orders") do
    expect(check.anagram("dog","dog")).to(eq("These words are not anagrams"))
  end

  # it("Will check to see if two words provided contain exact same letters in reverse order") do
  #   expect(palindrome("racecar","racecar")).to(eq("These words are palindromes"))
  # end
  #
  # it("Will check to see if two words provided contain none of the same letters") do
  #   expect(antigram("fox","bun")).to(eq("These words are antigrams"))
  # end

end
