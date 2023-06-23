arguments = []

ARGV.each do |arg|
    arguments.push(arg)
end

def convert_to_pig_latin(word)
    vowel = ["a", "e", "i", "o", "u"]
    pig_latin_word = ""

    word_array = word.chars

    word_array.each_with_index do |element, index|
        if vowel.include? element and index != 0
            pig_latin_word = word_array[index..].join + word_array[0..index-1].join + "ay"
            return pig_latin_word
        end
    end
    return word
end

puts convert_to_pig_latin(arguments[0])

