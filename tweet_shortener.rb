def dictionary(word)
  sub_hash = {
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

  if sub_hash.has_key?(word.downcase)
    return sub_hash[word.downcase]
  else
    return word
  end
end

def word_substituter(tweet)
  result = []
  words = tweet.split(" ")
  words.each do |w|
    result.push(dictionary(w))
  end

  result.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    new_tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  temp = ""
  if new_tweet.length > 140
    temp = new_tweet[0..136]
    temp += "..."
    return temp
  else
    return new_tweet
  end
end