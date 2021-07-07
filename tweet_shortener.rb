require 'pry'

def dictionary
  dictionary_hash = {
    :hello => "hi",
    :to => "2",
    :too => "2",
    :two => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
}
end

def word_substituter (tweet)

  tweet = tweet.split(" ")

  keys = dictionary.keys

  length = keys.length
  counter = 0

  while counter < length
    keys[counter] = keys[counter].to_s
    counter = counter + 1
  end

  tweet.each_with_index do |word, index|
      word = word.downcase
    keys.each do |replacement|

      if word == replacement
        dic = dictionary
        tweet[index] = dic[replacement.to_sym]

      end

    end

  end

  tweet.join(" ")

end

def bulk_tweet_shortener (array_of_tweets)

  length = array_of_tweets.length
  counter = 0

  while counter < length
    puts word_substituter(array_of_tweets[counter])
    counter = counter + 1
  end

end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)

  end
  tweet
end

def shortened_tweet_truncator (tweet)
  tweet = word_substituter(tweet)

  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  end

tweet
end
