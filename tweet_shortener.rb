def dictionary
  replacements = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(sentence)
  sentence_array = sentence.split(" ")
  keys, values = dictionary.keys, dictionary.values
  sentence_array.map! do |word|
    if keys.include?(word.downcase)
      index = keys.index(word.downcase)
      word = values[index]
    else
      word = word
    end
  end
  sentence_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(sentence)
  return word_substituter(sentence) unless sentence.length < 140
  sentence
end

def shortened_tweet_truncator(sentence)
  shortened = selective_tweet_shortener(sentence)
  return shortened if shortened.length <= 140
  shortened.slice(0, 140)
end