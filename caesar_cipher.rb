require 'pry-byebug'
def caesar_cipher(phrase, shift_factor)
    alpha = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    indexed_alpha = alpha.map.with_index {|ch, idx| [ch, idx]}
    phrase.split('')
    shifted_alpha_index = indexed_alpha.pop(shift_factor).map.with_index {|ch, idx| [ch, idx]}
    puts shifted_alpha_index
    # binding.pry
end

# binding.pry
caesar_cipher('hello',3)
# binding.pry