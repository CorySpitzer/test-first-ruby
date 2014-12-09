#03_simon_says

def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, times=2)
    #((string + ' ')*times)[0...-1]
    # does unneccesary work, this doesn't:
    ([string]*times).join(' ')
end

def start_of_word(word, length)
    word[0...length]
end

def first_word(string)
    # there could be a more efficient way to do this without
    # making the string into an array
    string.split[0]
end

def titleize(string)
    small_words = ['and', 'a', 'or', 'the', 'over']

    words = string.split
    titleized = []
    first = true
    words.each do |word|
        if first 
            titleized << word.capitalize
            first = false
        elsif small_words.include?(word)
            titleized << word
        else
            titleized << word.capitalize
        end
    end
    titleized.join(' ')
end

