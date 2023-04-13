def caesar_cipher(phrase, shift_factor)
    split_phrase = phrase.split('')
    ord_phrase_array = []
    shift_array = []
    caesar_ord_array = []
    tranlated_phrase = ''
    
    # Get ord numbers for the phrase
    split_phrase.each do |item|
        value = item.ord
        ord_phrase_array.push(value)
    end

    # Shift the ord numbers to the shift_factor
    ord_phrase_array.each do |item|
        if ((item + shift_factor).between?(65, 90)) || ((item + shift_factor).between?(97, 122))
            shift_array.push(item + shift_factor)
        elsif (item + shift_factor).between?(91,96)
            shift_array.push((item - 26) + shift_factor)
        elsif (item + shift_factor) > 123
            shift_array.push((item - 26) + shift_factor)
        else
            shift_array.push(item)
        end
    end

    #Translate back to ascii
    shift_array.each do |item|
        caesar_ord_array.push(item.chr)
    end

    #Join the array
    translated_phrase = caesar_ord_array.join("")

    p ord_phrase_array
    p shift_array
    p caesar_ord_array
    p translated_phrase
end
caesar_cipher("wxyz", 2)