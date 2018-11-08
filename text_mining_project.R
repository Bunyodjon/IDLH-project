library(NLP)
library(tm)
# helllo this is my code 

stopwords <- stopwords(kind="en")
stopwords_german <- stopwords("SMART")


# Google's text to speech API 
install.packages("googleLanguageR")
# creat a text file inside directory 

library(googleLanguageR)
gl_auth("location_of_json_file.json")


gl_speech() 

## get the sample source file
test_audio <- system.file("woman1_wb.wav", package = "googleLanguageR")

## its not perfect but...:)
gl_speech(test_audio)$transcript


library(ggplot2)
library(maps)

county_df <- map_data('county')  #mappings of counties by state

ny <- subset(county_df, region=="new york")   #subset just for NYS
ny$county <- ny$subregion

cnames <- aggregate(cbind(long, lat) ~ region, data=states.outlines, 
                    FUN=function(x)mean(range(x)))

cnames$state <- state2abbr(cnames$region) 
  
