class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".



# PLEASE READ: windows defender blocked my installation of Ruby saying there was something off with the hash,
# I didn't check it manually to see (So it might just be a windows thing!), but I didn't want to risk something happening to my PC.
# However, I did go ahead and solve the problems in ruby w/ VSCode. Everything checks out in the compiler. Thank you!!

# Helper Function check_chars to be called elsewhere

def check_chars(array_of_words)
  new_array = []
  array_of_words.each do |word|
    if word.length > 4 && word[0] == word[0].downcase
      new_array.push('marklar')
    elsif word.length > 4 && word[0] == word[0].upcase
      new_array.push('Marklar')
    else
      new_array.push(word)
    end
  end
  puts new_array.join('')
  return new_array.join('')
end

# Main Function
def self_marklar(string)
  array_of_words = string.split(/([_\W])/)
  check_chars(array_of_words)
end

self_marklar("The quick brown fox")
self_marklar("Down goes Frazier")
self_marklar("Monday is Martin Luther King day")
self_marklar("How is the weather today? I have not been outside.")

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def fibonacci(number)
    fibonacci_sequence = [0, 1]
    sum_of_even_fibonacci = 0
    (2..number).each do |index|
      fibonacci_sequence[index] = fibonacci_sequence[index - 1] + fibonacci_sequence[index - 2]
      fibonacci_sequence.push(fibonacci_sequence[index])
      if fibonacci_sequence[index] % 2 == 0
        sum_of_even_fibonacci += fibonacci_sequence[index]
      end
    end
    # puts sum_of_even_fibonacci
    sum_of_even_fibonacci
  end
  
  puts fibonacci(5)
  puts fibonacci(11)
  puts fibonacci(19)
  puts fibonacci(35)

end
