# tell whether a string is a pangram (contains all letters in the alphabet or not)
# lower and uppercase letters are considered the same


def pangram?(string)
	string = string.downcase.split('').uniq
	alphabet = ('a'..'z')
	letter_count = 0
	string.each do |letter|
		if alphabet.include?(letter)
			letter_count += 1
		end
	end
	if letter_count == 26
		puts "pangram"
	else
		puts "not pangram"
	end
end


string = gets.chomp
pangram?(string)