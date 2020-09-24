# Converting Twitter JSON with NDJSON Package in R

This tutorial describes how to collect data using [MassMine's](massmine.org) Twitter tools. Specifically, the following commands were used to collect data:  

`./massmine --task=twitter-trends --geo=2414469 --output=gboro-trends.json`

`./massmine --task=twitter-search --query=trump --count=200 --output=trump.json`

Additionally, the code example in `json_conversion.R` shows how to use the [NDJSON](https://cran.r-project.org/web/packages/ndjson/index.html) package to convert Twitter JSON into a tibble/data frame, and also how to save the tibble as a CSV file.

Goals for Tutorial:
- Install MassMine and Authenticate with Twitter Credentials
- Collect and convert Twitter trends data to tibble/csv
- Collect and convert Twitter tweets data to tibble/csv
- Explore data for your own project
