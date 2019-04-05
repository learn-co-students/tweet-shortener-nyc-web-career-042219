def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => "2", 
    "two" => "2", 
    "too" => '2', 
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&",
    "Hello" => 'Hi',
    "To" => "2", 
    "Two" => "2", 
    "Too" => '2', 
    "For" => '4',
    "Four" => '4',
    "Be" => 'b',
    "You" => 'u',
    "At" => "@",
    "And" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  new_words = words.map do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end
  new_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do | tweet |
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length <= 140
      return tweet
    else
      return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  end
  if word_substituter(tweet).length > 140
    return word_substituter(tweet)[0..134] + "(...)"
  else
    return word_substituter(tweet)
  end
end
