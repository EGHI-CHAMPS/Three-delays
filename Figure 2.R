library(eulerr)

VennDiag <- euler(c(
  "Delay 1" = 37.2, 
  "Delay 2" = 3.2, 
  "Delay 3" = 7.5, 
  "No delay referred" = 35.5, 
  'Delay 1&Delay 2'=3.5,
  'Delay 1&Delay 3'=7.9,
  'Delay 2&Delay 3'=2.1,
  'Delay 1&Delay 2&Delay 3'=3.1)
)

plot(VennDiag)