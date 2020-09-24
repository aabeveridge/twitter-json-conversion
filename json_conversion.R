library(ndjson)
library(tidyverse)

##################################################################################
# MassMine commands used to collect this data:
# ./massmine --task=twitter-trends --geo=2414469 --output=gboro-trends.json
# ./massmine --task=twitter-search --query=trump --count=200 --output=trump.json
##################################################################################


# convert trends json to data.frame/tibble
trend.data <- stream_in('gboro-trends.json') %>%
  as_tibble()

# convert tweets json to data.frame/tibble
tweets.data <- stream_in('trump1.json') %>%
  as_tibble()

# converts tweets to csv file
write.csv(tweets.data, file="trump_tweets.csv")
write.csv(trend.data, file="gboro-trends.csv")
