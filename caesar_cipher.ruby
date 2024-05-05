
# Generates a Caesar cipher for the given payload with the specified shift.
#
# @param payload [String] the input string to be encrypted
# @param shift [Integer] the number of positions to shift each letter
# @return [String] the encrypted string
def caesar_cipher(payload, shift)
  raise ArgumentError, 'Payload must be a string' unless payload.is_a?(String)
  raise ArgumentError, 'Shift must be an integer' unless shift.is_a?(Integer)
  if shift > 26
    shift %= 26
  end

  letters = ('a'..'z').to_a

  payload.chars.map{|char|
    letter_index = letters.find_index(char.downcase)

    next char if letter_index.nil?
    new_letter = letters[(letter_index + shift) % 26]

    char.upcase == char ? new_letter.upcase : new_letter
  }.join
end
