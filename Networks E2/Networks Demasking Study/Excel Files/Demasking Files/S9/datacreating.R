f = read.csv("S1_unscored.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
f_primemask = f[,c("Mask1.RESP.Trial.", "Mask2.RESP.Trial.", 
                   "Mask3.RESP.Trial.", "Mask4.RESP.Trial.", 
                   "Mask5.RESP.Trial.", "Mask6.RESP.Trial.", 
                   "Mask7.RESP.Trial.", "Mask8.RESP.Trial.", 
                   "Mask9.RESP.Trial.", "Mask10.RESP.Trial.", 
                   "Mask11.RESP.Trial.", "Mask12.RESP.Trial.", 
                   "Mask13.RESP.Trial.", "Mask14.RESP.Trial.", 
                   "Mask15.RESP.Trial.", "Mask16.RESP.Trial.", 
                   "Mask17.RESP.Trial.", "Mask18.RESP.Trial.",
                   "Mask1.RT.Trial.","Mask2.RT.Trial.",
                   "Mask3.RT.Trial.","Mask4.RT.Trial.",
                   "Mask5.RT.Trial.","Mask6.RT.Trial.",
                   "Mask7.RT.Trial.","Mask8.RT.Trial.",
                   "Mask9.RT.Trial.","Mask10.RT.Trial.",
                   "Mask11.RT.Trial.","Mask12.RT.Trial.",
                   "Mask13.RT.Trial.","Mask14.RT.Trial.",
                   "Mask15.RT.Trial.","Mask16.RT.Trial.",
                   "Mask17.RT.Trial.","Mask18.RT.Trial.")]
for(i in 1:nrow(f_primemask)){
  for(j in 1:ncol(f_primemask)){
    x = f_primemask[i,j]
  if(is.na(f_primemask[i,j]) | x == "" ){
    f_primemask[i,j] = 0
  }
  }
}

write.csv(f_primemask, file = "S1_PrimeMask.csv")


f_primeno = f[,c("Prime1.RESP.Trial.", "Prime2.RESP.Trial.", 
                 "Prime3.RESP.Trial.", "Prime4.RESP.Trial.", 
                 "Prime5.RESP.Trial.", "Prime6.RESP.Trial.", 
                 "Prime7.RESP.Trial.", "Prime8.RESP.Trial.", 
                 "Prime9.RESP.Trial.", "Prime10.RESP.Trial.", 
                 "Prime11.RESP.Trial.", "Prime12.RESP.Trial.", 
                 "Prime13.RESP.Trial.", "Prime14.RESP.Trial.", 
                 "Prime15.RESP.Trial.", "Prime16.RESP.Trial.", 
                 "Prime17.RESP.Trial.", "Prime18.RESP.Trial.",
                 "Prime1.RT.Trial.","Prime2.RT.Trial.",
                 "Prime3.RT.Trial.","Prime4.RT.Trial.",
                 "Prime5.RT.Trial.","Prime6.RT.Trial.",
                 "Prime7.RT.Trial.","Prime8.RT.Trial.",
                 "Prime9.RT.Trial.","Prime10.RT.Trial.",
                 "Prime11.RT.Trial.","Prime12.RT.Trial.",
                 "Prime13.RT.Trial.","Prime14.RT.Trial.",
                 "Prime15.RT.Trial.","Prime16.RT.Trial.",
                 "Prime17.RT.Trial.","Prime18.RT.Trial.")]

for(i in 1:nrow(f_primeno)){
  for(j in 1:ncol(f_primeno)){
    x = f_primeno[i,j]
    if(is.na(f_primeno[i,j]) | x == "" ){
      f_primeno[i,j] = 0
    }
  }
}

write.csv(f_primeno, file = "S1_PrimeNO.csv")

f_targetmask = f[,c("TMask1.RESP.Trial.", "TMask2.RESP.Trial.", 
                 "TMask3.RESP.Trial.", "TMask4.RESP.Trial.", 
                 "TMask5.RESP.Trial.", "TMask6.RESP.Trial.", 
                 "TMask7.RESP.Trial.", "TMask8.RESP.Trial.", 
                 "TMask9.RESP.Trial.", "TMask10.RESP.Trial.", 
                 "TMask11.RESP.Trial.", "TMask12.RESP.Trial.", 
                 "TMask13.RESP.Trial.", "TMask14.RESP.Trial.", 
                 "TMask15.RESP.Trial.", "TMask16.RESP.Trial.", 
                 "TMask17.RESP.Trial.", "TMask18.RESP.Trial.",
                 "TMask1.RT.Trial.","TMask2.RT.Trial.",
                 "TMask3.RT.Trial.","TMask4.RT.Trial.",
                 "TMask5.RT.Trial.","TMask6.RT.Trial.",
                 "TMask7.RT.Trial.","TMask8.RT.Trial.",
                 "TMask9.RT.Trial.","TMask10.RT.Trial.",
                 "TMask11.RT.Trial.","TMask12.RT.Trial.",
                 "TMask13.RT.Trial.","TMask14.RT.Trial.",
                 "TMask15.RT.Trial.","TMask16.RT.Trial.",
                 "TMask17.RT.Trial.","TMask18.RT.Trial.")]


for(i in 1:nrow(f_targetmask)){
  for(j in 1:ncol(f_targetmask)){
    x = f_targetmask[i,j]
    if(is.na(f_targetmask[i,j]) | x == "" ){
      f_targetmask[i,j] = 0
    }
  }
}

write.csv(f_targetmask, file = "S1_TargetMask.csv")

f_targetno = f[,c("Target1.RESP.Trial.", "Target2.RESP.Trial.", 
                  "Target3.RESP.Trial.", "Target4.RESP.Trial.", 
                  "Target5.RESP.Trial.", "Target6.RESP.Trial.", 
                  "Target7.RESP.Trial.", "Target8.RESP.Trial.", 
                  "Target9.RESP.Trial.", "Target10.RESP.Trial.", 
                  "Target11.RESP.Trial.", "Target12.RESP.Trial.", 
                  "Target13.RESP.Trial.", "Target14.RESP.Trial.", 
                  "Target15.RESP.Trial.", "Target16.RESP.Trial.", 
                  "Target17.RESP.Trial.", "Target18.RESP.Trial.",
                  "Target1.RT.Trial.","Target2.RT.Trial.",
                  "Target3.RT.Trial.","Target4.RT.Trial.",
                  "Target5.RT.Trial.","Target6.RT.Trial.",
                  "Target7.RT.Trial.","Target8.RT.Trial.",
                  "Target9.RT.Trial.","Target10.RT.Trial.",
                  "Target11.RT.Trial.","Target12.RT.Trial.",
                  "Target13.RT.Trial.","Target14.RT.Trial.",
                  "Target15.RT.Trial.","Target16.RT.Trial.",
                  "Target17.RT.Trial.","Target18.RT.Trial.")]


for(i in 1:nrow(f_targetno)){
  for(j in 1:ncol(f_targetno)){
    x = f_targetno[i,j]
    if(is.na(f_targetno[i,j]) | x == "" ){
      f_targetno[i,j] = 0
    }
  }
}

write.csv(f_targetno, file = "S1_TargetNO.csv")

