# Implement a function that checks if every single letter of the alphabet is
# used in a sentence at least once (case is irrelevant). Function returns true
# or false.
#
# Ignore numbers and punctuation
#
# Examples:
#  "A wizard's job is to vex chumps quickly in fog." => true
#  "Here are some letters missing" => false

def all_letters?(sentence)
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
              'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  characters = sentence.downcase.chars
  (alphabet - characters).empty?
end
