def dictionary
  dict = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  words.collect do |words|
    dictionary.collect do |key, value|
      if words == key
      words.replace(value)
    end 
  end
 end  
 words.join(" ")
 end