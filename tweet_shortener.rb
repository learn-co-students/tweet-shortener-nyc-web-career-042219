def dictionary
  dict_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(string)
  tweet_array = string.split(" ")
  tweet_array.map do |word|
    dictionary.each do |key, value|
      if word.downcase == key
        word = value
      end
    end
    word
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    tweet_array = string.split(" ")
    tweet_array.map do |word|
      dictionary.each do |key, value|
        if word.downcase == key
          word = value
        end
      end
      word
    end.join(" ")
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  if word_substituter(string).length > 140
    word_substituter(string)[1..137] + "..."
  else
    word_substituter(string)
  end
end
