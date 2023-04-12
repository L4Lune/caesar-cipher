# caesar-cipher
# Method needs to take in a phrase/string and a shift factor (integer)
# It will then output a modified string
# Start with an array of the alphabet mapped to integer values
# Maybe do a pop and unshift operation to pop off the last items
# and move them to the front/back of the array. This would require
# me to use the return from pop as the input to unshift or vice-
# versa.

# Take the input from the string and convert each letter to an
# integer. Take the shift_factor and change the alphabet array
#  with unshift and pop to match the shift. Then use the indexes of
# newly shifted values to repopulate the array with the right
# letters.