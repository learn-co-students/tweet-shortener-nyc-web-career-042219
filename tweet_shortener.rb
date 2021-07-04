require 'pry'

def dictionary
  words = {
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
  tweet.split.map do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    shortened_tweet = []
    tweet.split.each do |word|
      if dictionary.keys.include?(word.downcase)
        shortened_tweet << word = dictionary[word.downcase]
      else
        shortened_tweet << word
      end
    end
    puts shortened_tweet.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return tweet[0..139]
    #binding.pry
  end
  tweet
end

def shortened_tweet_truncator(tweet)

  if word_substituter(tweet).length > 140
    return tweet[0..139]
    #binding.pry
  end
  tweet
end
