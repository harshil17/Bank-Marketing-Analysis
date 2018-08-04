getwd()
setwd("E:/book/capstone/Project")

bank <- read.csv("bank-full.csv", sep = ";")
bank

model<-glm(y~., family = binomial(link='logit'), data=bank_df)
step(model, direction = "backward")
