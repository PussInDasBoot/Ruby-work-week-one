def count_letters(sentence)
  number_of_letters = Hash.new(0)
  sentence.each_char do |letter|
    next unless letter =~/\w/
    number_of_letters[letter] += 1
  end
  number_of_letters
end

p count_letters("Hi there how are you?")


def count_index(sentence)
  return_index = Hash.new{|hash, key| hash[key] = []}
  characters = sentence.gsub(/\s/, "").split('')
  characters.each_with_index do |letter,index|
    return_index[letter] << index
  end
  return_index
end


p count_index("Hi there how are you?")
