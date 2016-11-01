with(mtcars,{
  print(summary(mpg)) 
  plot(mpg,disp) 
  plot(mpg,wt)
  })

with(mtcars, {
  nokeepstats <- summary(mpg)
  keepstats <<- summary(mpg)
})
keepstats
nokeepstats
