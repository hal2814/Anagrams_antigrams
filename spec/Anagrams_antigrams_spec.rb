require('rspec')
require('Anagrams_antigrams')
require('pry')

describe('Anagrams_antigrams') do
  it("Will check to see if two words provided contain exact same letters, but in differrent orders") do
    expect(anagram("tea","eat")).to(eq("These words are anagrams"))
  end

  it("Will check to see if two words provided contain exact same letters in reverse order") do
    expect(palindrome("racecar","racecar")).to(eq("These words are palindromes"))
  end

  it("Will check to see if two words provided contain none of the same letters") do
    expect(antigram("fox","bun")).to(eq("These words are antigrams"))
  end

end
