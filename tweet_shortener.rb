def dictionary
shorten = {
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

def word_substituter(tweet)
  tweet_string = tweet.split(" ")
  new_tweet = tweet_string.collect do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |twit|
    puts word_substituter(twit)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
      word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    tweet[0..139] 
  else
    tweet
  end
end
