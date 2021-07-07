# Write your code here.
def dictionary
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
	sub_hash
end

def word_substituter(string)
	arr = string.split
	new_arr = []
	arr.each do |i|
		if dictionary.keys.include?(i.downcase)
			new_arr.push(dictionary[i.downcase])
		else
			new_arr.push(i)
		end
	end
	new_arr.join(" ")
end

def bulk_tweet_shortener(tweet_array)
	tweet_array.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	t = ''
	if tweet.length > 140
		t = word_substituter(tweet)
	else
		t = tweet
	end
	t
end

def shortened_tweet_truncator(tweet)
	new_tweet = ''
	sub_tweet = word_substituter(tweet)
	if sub_tweet.length > 140
		new_tweet = sub_tweet.gsub(sub_tweet[137..-1], "...")
	else
		new_tweet = sub_tweet
	end
	new_tweet
end
