# 04_pig_latin.rb
# Jan 2, 2015

Vowels = ['a','e','i','o', 'u']
Punctuations = [',', '.', ';', ':', '?', '!']

def get_punctuation(word)
    # assumes punctuation is only at the end of a word
    if Punctuations.include? word[-1]
        word[-1]
    else
        ''
    end
end

def get_consonants(word)
    last_char_q = false
    consonants = ''
    word.downcase.split('').each do |char|
        # if consonant
        if (not Vowels.include? char) or (last_char_q and char == 'u')
            consonants << char
            if char == 'q'
                last_char_q = true
            end
        else # its a vowel
            break
        end
    end
    consonants
end

def capitalized?(word)
    if word[0] == word[0].upcase
        true    
    else
        false
    end
end

def translate(str) 
    words = str.split(' ')
    out_words = []
    words.each do |word|
        punctuation = get_punctuation(word)
        starting_consonants = get_consonants(word)
        word = word.delete punctuation
        
        # The expression!
        out_words << (word[starting_consonants.length..-1] + starting_consonants + 'ay' + punctuation)
        
        if capitalized? word
            out_words[-1] = out_words[-1].capitalize
        end
    end
    out_words.join(' ')
end
