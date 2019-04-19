require 'pry'
# Write your code here.
def dictionary
  {
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
  # turn tweet string to tweet array, iterate by word-turned-elem
  # split(" ") is the same as split
    # if any of the word/elems match any dictionary keys
    # then replace those words in the tweet array with the dictionary[key]
    # if the key is the word then you can call the value with dictionary[word]
        # if not matching, return word to arr as it is

        # return back the replaced array as a string with join(" ")
  result = tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  return result.join(" ") #why is this return
end

def bulk_tweet_shortener(tweet_list)
  # don't want to split arr to strings because won't be able to cleanly join back
  # to distinct tweets
  # adjust word_substituter to resolve "For" test issue
  tweet_list.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet) #why can't this be puts? "does sub" not return sub
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  shortened.length > 140 ? shortened[0...137] + "..." : shortened
end
