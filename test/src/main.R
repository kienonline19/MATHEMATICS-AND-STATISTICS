#%%
v <- c(5, 10, 15, 20)
print(v[1])
v[1:3]
v[0]
v[-1]
v[c(1,3)]
v[100]
v[v < 10]
v[v >= 10]

#%%
m <- matrix(1:9, nrow=3, byrow=TRUE)

m[1,]
m[,2]
m[1,2]
m[1:3]
m[1]
m*m
m %*% m

m[m > 5]

#%%
f <- factor(
    c("low", "medium", "high"),
    levels=c("low", "medium", "high"),
    ordered=TRUE  
)

f

#%%
i = 1

while (i < 6) {
    print(i)
    i <- i + 1
}

#%%
df <- data.frame(
    Age = c(20, 22, 21),
    Gender = c("Male", "Female", "Male"),
    Score = c(85, 90, 95)
)

df$Gender <- as.factor(df$Gender)
str(df)
as.numeric(df$Gender)
levels(df$Gender)
df$Gender <- factor(df$Gender, c("Male", "Female"))
str(df)

#%%
counts <- c(30, 20, 15, 10)
names(counts) <- c("Football", "Basketball", "Swimming", "Tennis")
barplot(counts)
