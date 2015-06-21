---
title       : Pitching for Shiny App
subtitle    : 
author      : Zheng Wu
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Motivation for prediction shiny

1. It combines the knowledge from practical machine learning
2. It would be interesting do to prediction on the fly
3. Explore the potential issues of this kind of shiny app

--- .class #id 

## Code for trainng the model

```r
data(iris)
training <- iris
library(caret)
library(rpart)
model <- train(Species ~ .,method="rpart",data=training)
model$results
```

```
##     cp  Accuracy     Kappa AccuracySD    KappaSD
## 1 0.00 0.9410441 0.9107821 0.02942593 0.04452917
## 2 0.44 0.7683479 0.6572074 0.15154351 0.22111899
## 3 0.50 0.5235410 0.3132663 0.16908556 0.22307929
```

--- .class #id  

## Issues encountered
Shiny apps deployed on shinyapps.io has memory limit.

If train the model on the fly the shiny app would be greyed out.

So the training of the model can not be done on the fly.

--- .class #id 

## Solution
Train the model beforehand and save the model into the directory.

server.R only loads the pre-trained model.

```r
save(model, file = "model.RData")
load("model.RData")
```



