df <- data.frame(id = 1:5,
                 char_col = c("a", "b", "c", "d", "e"),
                 log_col = c(T,T,T,F,T),
                 double_col = c(2.1, 1, 0.5, pi, 12.7))
df

as.data.frame(matrix(1:12, nrow = 4))

ncol(df)
nrow(df)
dim(df)

cbind()
rbind()

df <- data.frame(Letters = c("A", "B", "C"),
                 Digits = 1:3)
df

df1 <- data.frame(Letters = c("D"),
                  Digits = 4)
df1

df <- rbind(df, df1)
df

df2 <- data.frame(X = 5:8, Y = c("R", "D", "S", "E"))
df2

df <- cbind(df, df2)
df

#############################

df1 <- data.frame(Id = c(1:4),
                  Name = c("Nick", "Jake", "Jane", "Mary"))
df1

df2 <- data.frame(Id = c(2, 1, 3, 5), 
                  Age = c(34, 21, 45, 20))
df2

df <- merge(df1, df2, by = "Id", all.x = T, all.y = T)
df

df[1,]
df[,1]
df[1:3,]
df$Name
df$Age

colnames(df) <- c("id", "user_name", "age")
df

df[df$age > 30 & !is.na(df$age), ]
