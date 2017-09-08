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

  it("Will check to see if two words provided contain exact same letters in reverse order") do
    expect(check.palindrome?("dragon","dragon")).to(eq(false))
  end


end
