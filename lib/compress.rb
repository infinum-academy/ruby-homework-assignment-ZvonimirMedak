# Run-length-encoding is a simple form of data compression:
#   if an element (e) occurs (n) consecutive times in input stream replace the consecutive
#   occurrences with a single pair (ne)
#
# Examples:
#   a    -> 1a
#   aa   -> 2a
#   aabb -> 2a2b
#   abc  -> 1a1b1c

def compress(input_stream)
  characters = input_stream.downcase.chars
  value = ''

  return value if characters.empty?

  remove_characters(characters, value)
end

def remove_characters(characters, value)
  while characters.any?
    first_character = characters.first
    elements = characters.take_while { |s| s == first_character }
    value += elements.count.to_s + first_character.to_s
    characters = characters.drop(elements.count)
  end

  value
end
