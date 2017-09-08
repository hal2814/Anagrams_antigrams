require('rspec')
require('Anagrams_antigrams')
require('pry')

describe('Anagrams_antigrams') do
  check = Anagrams_antigrams.new()
  it("Will check to see if two words provided contain exact same letters, but in differrent orders") do
    expect(check.anagram?("aligned","dealing")).to(eq(true))
  end

  it("Will check to see if two words provided do not contain exact same letters, but in differrent orders") do
    expect(check.anagram?("dog","dog")).to(eq(false))
  end

  it("Will check to see if two words provided contain none of the same letters") do
    expect(check.antigram?("motor","slick")).to(eq(true))
  end
  it("Will check to see if two words provided contain some of the same letters") do
    expect(check.antigram?("boxer","fox")).to(eq(false))
  end

  it("Will check to see if two words provided contain exact same letters in reverse order") do
    expect(check.palindrome?("racecar","racecar")).to(eq(true))
  end

  it("Will check to see if two words provided contain exact same letters and are the same in reverse order") do
    expect(check.palindrome?("dragon","dragon")).to(eq(false))
  end

  it("Will check to see if two words provided are indeed words") do
    expect(check.isWord?("clp","track")).to(eq(false))
  end

  it("Will check to see if two words provided are indeed words") do
    expect(check.isWord?("clip","track")).to(eq(true))
  end

  it("Will check to see if two words provided contain exact same letters, but in differrent orders") do
    expect(check.allOutcome("aligned","dealing")).to(eq("These words are anagrams"))
  end

  it("Will check to see if two words provided contain none of the same letters") do
    expect(check.allOutcome("motor","slick")).to(eq("These words are antigrams"))
  end

  it("Will check to see if two words provided contain exact same letters and are the same in reverse order") do
    expect(check.allOutcome("racecar","racecar")).to(eq("These words are palindromes"))
  end

  it("Will check to see if two words provided are indeed words") do
    expect(check.allOutcome("clp","track")).to(eq("You entered one or more words that are not words"))
  end

end
