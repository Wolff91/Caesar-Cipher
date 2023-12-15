def caesar_cipher(text, shift)
    result = "" 
    text.each_char do |char| #Initiates a loop that runs trough all characters in 'text'
        if char.match(/[a-zA-Z]/) #see if any of the characters matches a-z or A-Z
          base = char =~ /[a-z]/ ? 'a' : 'A'
         result += ((char.ord - base.ord + shift) % 26 + base.ord).chr
     else
        result += char
     end
end
    result
end

original_text = "What a string!"
shift_value = 5

encrypted_text = caesar_cipher(original_text, shift_value)
puts "Original text: #{original_text}"
puts "Encrypted text: #{encrypted_text}"