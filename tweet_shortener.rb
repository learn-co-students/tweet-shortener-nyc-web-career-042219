# Write your code here.
dictionary =  {"hello" => "hi", "Hello" => "hi",
              "to" => "2", "two" => "2", "too" => "2", "To" => "2", "Two" => "2", "Too" => "2",
              "for" => "4", "four" => "4", "For" => "4", "Four" => "4",
              "be" => "b", "becomes" => "b", "Be" => "b", "Becomes" => "b",
              "you" => "u", "You" => "u",
              "at" => "@", "At" => "@",
              "and" => "&", "And" => "&"
              }

def word_substituter (line)
dictionary =  {"hello" => "hi", "Hello" => "hi",
              "to" => "2", "two" => "2", "too" => "2", "To" => "2", "Two" => "2", "Too" => "2",
              "for" => "4", "four" => "4", "For" => "4", "Four" => "4",
              "be" => "b", "becomes" => "b", "Be" => "b", "Becomes" => "b",
              "you" => "u", "You" => "u",
              "at" => "@", "At" => "@",
              "and" => "&", "And" => "&"
              }
  line_array = line.split(" ")
  dictionary.keys.each do |word|
    if line_array.include?(word)
      until line_array.index(word) == nil
        i = line_array.index(word)
        line_array[i] = dictionary[word]
      end
    end
  end
  line_array.join(" ")
end

def bulk_tweet_shortener(lines)
  lines.map do |line| 
    puts word_substituter(line)
  end
end

def selective_tweet_shortener(line)
  if line.length > 140
    word_substituter(line)
  else
    line
  end
end

def shortened_tweet_truncator(line)
  if selective_tweet_shortener(line).length > 140
    selective_tweet_shortener(line)[0..136] + "..."
  else
    line
  end
end













