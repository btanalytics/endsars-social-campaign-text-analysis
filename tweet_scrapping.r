#install.packages("twitteR")
#install.packages("ROAuth")
library("twitteR")
library("ROAuth")
library(httr)





# Set API Keys
api_key <- "Du4fbrNFuEdZ1DRglQ86KteFV"
api_secret <- "BhebW8IN81fbKufGFTkkMNvtvj9vkvaUs58IZ4BNrduGufR2UU"
access_token <- "207512685-pduoLFObOMxDHUdGG59lkagvimBDUD2EZkuU6YPq"
access_token_secret <- "uhqvsTyzo6hiBPVEO5pJb7aaSUwIdvLedzVE2iBeRzXm9"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)



search_string <- "#endsars"
no_of_tweets <- 7000


# Grab latest tweets
tweets <- searchTwitter('#endsars',n=10000,since = "2017-07-01",resultType="mixed")

length(tweets)

h =  twListToDF(tweets)
dim(h)

write.csv(x = h,file = 'endsars6000_1912d.csv')



# # Loop over tweets and extract text
# #library(plyr)
# feed = rapply(tweets, function(t) t$getText())
# user_screen_name = rapply(tweets, function(t) t$getScreenName())
# dat = get_timestamp(tweets)
# tweet_source = rapply(tweets, function(t) t$getStatusSource())
# retweet_status = rapply(tweets, function(t) t$getIsRetweet())
# 
# 
# get_timestamp =  function(tweets_feed){
#   d = vector('list')
# for( i in 1:length(tweets_feed)){
#   d[[i]] = tweets_feed[[i]]$getCreated()
# }
#   tstamp <- do.call('c',d)
# }
# 
# 
# endsars_df <- data.frame(tweet=feed, user_screen_name, timestamp = dat, source = gsub('<.*?>', '', tweet_source),
#                          retweet_status)
# dim(endsars_df)
# save(tweets,file = "twee6000_19-12.rda")
# write.csv(x = endsars_df,file = 'endsars1912d.csv')

