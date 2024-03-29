#vectorized form
set.seed(42)
#create matrix
mat_1<- replicate(10,rnorm(10))
df_1= data.frame(mat_1)
df_1<- df_1 + 10*sin(0.75*pi)
#non-vectorized form
set.seed(42)
mat_1<- replicate(10,rnorm(10))
df_1= data.frame(mat_1)

for(i in 1:10){
  for(j in 1:10){
    df_1[i,j]<- df_1[i,j] + 10*sin(0.75*pi)
    print(df_1)
  }
}
#time difference

system.time(
  df_1[i,j]<- df_1[i,j] + 10*sin(0.75*pi)
)
system.time(
  for(i in 1:10){
    for(j in 1:10){
      df_1[i,j]<- df_1[i,j] + 10*sin(0.75*pi)
    }
  }
)
