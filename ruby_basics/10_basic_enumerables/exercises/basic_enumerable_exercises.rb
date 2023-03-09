def display_current_inventory(inventory_list)
  inventory_list.each {|key, value| puts "#{key}, quantity: #{value}"}
end

def display_guess_order(guesses)
  guesses.each_with_index do |guess, index|
    puts "Guess \##{index + 1} is #{guess}"
  end
end

def find_absolute_values(numbers)
  numbers.map { |num| num.abs}
end

def find_low_inventory(inventory_list)
  inventory_list.select { |key, value| value < 4}
end

def find_word_lengths(word_list)
  word_list.reduce(Hash.new(0)) do |word, length|
    word[length] += length.length
    word
  end
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
end
