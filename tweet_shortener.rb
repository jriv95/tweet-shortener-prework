require "pry"

def dictionary
  shortened_words = {
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
  tweet.split(" ").collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
        binding.pry
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  #tweet.split(" ").collect do |post|
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
  #end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").collect do |post|
    if word_substituter(post).length > 140
      word_substituter(post)[0...136] + "..."
    else
      post
    end
  end.join(" ")
end
