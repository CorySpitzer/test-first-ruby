# 04_pig_latin.rb
# Jan 2, 2015

Vowels = ['a','e','i','o', 'u']
Punctuations = [',', '.', ';', ':', '?', '!']

def translate_word(word)   
    punctuation = ''
    # assume punctuation only comes directly after a word:
    # 'hi!' but never 'hi !'
    last_char = word[word.length-1]
    if Punctuations.include?(last_char)
        punctuation << last_char
        word = word.delete(last_char)
    end
    p punctuation
 
    if Vowels.include?(word[0])
        return word + 'ay' + punctuation
    else
        first_consonants = ''
        # is the first/next letter a consonant?
        last_char_q = false
        for i in (0..word.length-1) 
            #p i
            if last_char_q
                if word[i] == 'u'
                    first_consonants << word[i]
                end
            elsif not Vowels.include?(word[i])
                #unless Punctuations.include?(word[i])
                first_consonants << word[i]
                #end
                if word[i] == 'q'
                    last_char_q = true
                end
            else
                break
            end
        end
        return word[first_consonants.length, word.length] + first_consonants + 'ay' + punctuation
    end
end

def capitalized?(word)
    if word[0] == word[0].upcase
        true    
    else
        false
    end
end

def translate(string)
    words = []
    string.split(' ').each do |word|
        if capitalized?(word)
            words << translate_word(word).capitalize
        else
            words << translate_word(word)
        end
    end
    return words.join(' ')
end
