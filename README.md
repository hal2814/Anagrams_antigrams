Author: Nate McGregor

Description: class Anagrams_antigrams has methods that take two words as arguments. When all methods are called in the 'allOutcome' method they will return a string that explains if they are anagrams, antigrams, palindromes, actual words (only testing for vowels), or if they are none of those.

| Specs                                                                                                                | Input                      | Output                                             |
|----------------------------------------------------------------------------------------------------------------------|----------------------------|----------------------------------------------------|
| Will check to see if two words provided contain exact same letters, but in different orders                          | "aligned","dealing"        | "These words are anagrams"                         |
| Will check to see if two words provided contain none of the same letters                                             | "motor","slick"            | "These words are antigrams"                        |
| Will check to see if two words provided contain exact same letters and are the same in reverse order                 | "racecar","racecar"        | "These words are palindromes"                      |
| Will check to see if two words provided are indeed words                                                             | "clp","track"              | "You entered one or more words that are not words" |
| Will check to see if a word and a phrase (with a space) provided contain exact same letters, but in different orders | "fingertips","finest grip" | "These words are anagrams"                         |

copyright Nate McGregor 2017
