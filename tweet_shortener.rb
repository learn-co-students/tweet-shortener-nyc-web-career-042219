require "pry"


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

# binding.pry

def word_substituter(tweet)
  output = []
  tweet.split.each do |x|
   if dictionary.keys.include?(x.downcase)
     x = dictionary[x.downcase]
    output << x
   else
     output << x
   end
 end
 output.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
  # tweet = array.join(".")
  puts word_substituter(tweet)
end
end


def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    # tweet.size < 130 why is this not able to be here?
    tweet
end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    tweet[0..139]
    # binding.pry
  else
    tweet
  end
end
