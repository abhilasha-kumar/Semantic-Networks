#whichmask
maskingaggregates = matrix(NA, nrow = 240, ncol = 10)
colnames(maskingaggregates) = c("PrimeMaskNo", "PrimeNo", "TargetMaskNo", "TargetNo",
                                "PrimeMaskRT", "PrimeNoRT", "TargetMaskRT", "TargetNoRT",
                                "RTrecognisePrime", "RTrecogniseTarget")

#download all masks and primes/targets SPACE and RT data into 4 dataframes

primemask <- read.csv("S3_PrimeMask.csv", header=TRUE, sep= ",")
primemask = primemask[,-1]
colnames(primemask) = c("Mask1", "Mask2", "Mask3","Mask4","Mask5",
                       "Mask6","Mask7","Mask8","Mask9","Mask10","Mask11",
                       "Mask12","Mask13","Mask14","Mask15","Mask16","Mask17","Mask18")

primemask$Mask1 = as.character(primemask$Mask1)
primemask$Mask2 = as.character(primemask$Mask2)
primemask$Mask3 = as.character(primemask$Mask3)
primemask$Mask4 = as.character(primemask$Mask4)
primemask$Mask5 = as.character(primemask$Mask5)
primemask$Mask6 = as.character(primemask$Mask6)
primemask$Mask7 = as.character(primemask$Mask7)
primemask$Mask8 = as.character(primemask$Mask8)
primemask$Mask9 = as.character(primemask$Mask9)
primemask$Mask10 = as.character(primemask$Mask10)
primemask$Mask11 = as.character(primemask$Mask11)
primemask$Mask12 = as.character(primemask$Mask12)
primemask$Mask13 = as.character(primemask$Mask13)
primemask$Mask14 = as.character(primemask$Mask14)
primemask$Mask15 = as.character(primemask$Mask15)
primemask$Mask16 = as.character(primemask$Mask16)
primemask$Mask17 = as.character(primemask$Mask17)
primemask$Mask18 = as.character(primemask$Mask18)


primenodata <- read.csv("S3_PrimeNO.csv", header=TRUE, sep= ",")
primenodata = primenodata[,-1]
colnames(primenodata) = c("Prime1", "Prime2", "Prime3","Prime4","Prime5",
                          "Prime6","Prime7","Prime8","Prime9","Prime10",
                          "Prime11","Prime12","Prime13","Prime14","Prime15",
                          "Prime16","Prime17","Prime18")

primenodata$Prime1 = as.character(primenodata$Prime1)
primenodata$Prime2 = as.character(primenodata$Prime2)
primenodata$Prime3 = as.character(primenodata$Prime3)
primenodata$Prime4 = as.character(primenodata$Prime4)
primenodata$Prime5 = as.character(primenodata$Prime5)
primenodata$Prime6 = as.character(primenodata$Prime6)
primenodata$Prime7 = as.character(primenodata$Prime7)
primenodata$Prime8 = as.character(primenodata$Prime8)
primenodata$Prime9 = as.character(primenodata$Prime9)
primenodata$Prime10 = as.character(primenodata$Prime10)
primenodata$Prime11 = as.character(primenodata$Prime11)
primenodata$Prime12 = as.character(primenodata$Prime12)
primenodata$Prime13 = as.character(primenodata$Prime13)
primenodata$Prime14 = as.character(primenodata$Prime14)
primenodata$Prime15 = as.character(primenodata$Prime15)
primenodata$Prime16 = as.character(primenodata$Prime16)
primenodata$Prime17 = as.character(primenodata$Prime17)
primenodata$Prime18 = as.character(primenodata$Prime18)

targetmask <- read.csv("S3_TargetMask.csv", header=TRUE, sep= ",")
targetmask = targetmask[,-1]

colnames(targetmask) = c("Mask1", "Mask2", "Mask3","Mask4","Mask5",
                        "Mask6","Mask7","Mask8","Mask9","Mask10","Mask11",
                        "Mask12","Mask13","Mask14","Mask15","Mask16","Mask17","Mask18")

targetmask$Mask1 = as.character(targetmask$Mask1)
targetmask$Mask2 = as.character(targetmask$Mask2)
targetmask$Mask3 = as.character(targetmask$Mask3)
targetmask$Mask4 = as.character(targetmask$Mask4)
targetmask$Mask5 = as.character(targetmask$Mask5)
targetmask$Mask6 = as.character(targetmask$Mask6)
targetmask$Mask7 = as.character(targetmask$Mask7)
targetmask$Mask8 = as.character(targetmask$Mask8)
targetmask$Mask9 = as.character(targetmask$Mask9)
targetmask$Mask10 = as.character(targetmask$Mask10)
targetmask$Mask11 = as.character(targetmask$Mask11)
targetmask$Mask12 = as.character(targetmask$Mask12)
targetmask$Mask13 = as.character(targetmask$Mask13)
targetmask$Mask14 = as.character(targetmask$Mask14)
targetmask$Mask15 = as.character(targetmask$Mask15)
targetmask$Mask16 = as.character(targetmask$Mask16)
targetmask$Mask17 = as.character(targetmask$Mask17)
targetmask$Mask18 = as.character(targetmask$Mask18)


targetnodata <- read.csv("S3_TargetNO.csv", header=TRUE, sep= ",")
targetnodata = targetnodata[,-1]
colnames(targetnodata) = c("Target1", "Target2","Target3","Target4","Target5",
                           "Target6","Target7","Target8","Target9","Target10",
                           "Target11","Target12","Target13","Target14","Target15",
                           "Target16","Target17","Target18")

targetnodata$Target1 = as.character(targetnodata$Target1)
targetnodata$Target2 = as.character(targetnodata$Target2)
targetnodata$Target3 = as.character(targetnodata$Target3)
targetnodata$Target4 = as.character(targetnodata$Target4)
targetnodata$Target5 = as.character(targetnodata$Target5)
targetnodata$Target6 = as.character(targetnodata$Target6)
targetnodata$Target7 = as.character(targetnodata$Target7)
targetnodata$Target8 = as.character(targetnodata$Target8)
targetnodata$Target9 = as.character(targetnodata$Target9)
targetnodata$Target10 = as.character(targetnodata$Target10)
targetnodata$Target11 = as.character(targetnodata$Target11)
targetnodata$Target12 = as.character(targetnodata$Target12)
targetnodata$Target13 = as.character(targetnodata$Target13)
targetnodata$Target14 = as.character(targetnodata$Target14)
targetnodata$Target15 = as.character(targetnodata$Target15)
targetnodata$Target16 = as.character(targetnodata$Target16)
targetnodata$Target17 = as.character(targetnodata$Target17)
targetnodata$Target18 = as.character(targetnodata$Target18)


#for prime mask

for(i in 1:240){
  
  #print("inside i loop")
  #print (i)
  for(j in 1:18){
    
   # print("inside j loop")
    #print(j)
    if(primemask[i,j] == "{SPACE}"){
      maskingaggregates[i,1] = j
      maskingaggregates[i,5] = primemask[i,j+18]
      break
    }
    else {
      
      maskingaggregates[i,1] = 99
    }
  }
}

#for prime number

for(i in 1:240){
  
  #print("inside i loop")
  #print (i)
  for(j in 1:18){
    
    # print("inside j loop")
    #print(j)
    if(primenodata[i,j] == "{SPACE}"){
      maskingaggregates[i,2] = j
      maskingaggregates[i,6] = primenodata[i,j+18]
      break
    }
    else {
      
      maskingaggregates[i,2] = 99
    }
  }
}

#for targetmask

for(i in 1:240){
  
  #print("inside i loop")
  #print (i)
  for(j in 1:18){
    
    # print("inside j loop")
    #print(j)
    if(targetmask[i,j] == "{SPACE}"){
      maskingaggregates[i,3] = j
      maskingaggregates[i,7] = targetmask[i,j+18]
      break
    }
    else {
      
      maskingaggregates[i,3] = 99
    }
  }
}

#for target number

for(i in 1:240){
  
  #print("inside i loop")
  #print (i)
  for(j in 1:18){
    
    # print("inside j loop")
    #print(j)
    if(targetnodata[i,j] == "{SPACE}"){
      maskingaggregates[i,4] = j
      maskingaggregates[i,8] = targetnodata[i,j+18]
      break
    }
    else {
      
      maskingaggregates[i,4] = 99
    }
  }
}

#once we have all the numbers, we need to calculate RT to recognise for both prime and target
#need a record of exact time

masktimepassed <- c(500, 984, 1452, 1904, 2340, 2760, 3164, 
                    3552, 3924, 4280, 4620, 4944, 5252, 5544, 
                    5820, 6080, 6324, 6552)

targettimepassed <- c(16, 48, 96, 160, 240, 336, 448, 576, 720, 
                      880, 1056, 1248, 1456, 1680, 1920, 2176, 2448, 2736)
#for prime

for(i in 1:240){
  
  if(maskingaggregates[i,1] < maskingaggregates[i,2]){
    number = maskingaggregates[i,1]
    if(number != 1){
    newindex = number - 1
    }else {newindex = number}
    
    maskingaggregates[i,9] = masktimepassed[newindex] +
                                          targettimepassed[newindex]+
                                            maskingaggregates[i,5]
      
  }else {
    number = maskingaggregates[i,2]
    if(number != 1){
      newindex = number - 1
    }else {newindex = number}
   
    maskingaggregates[i,9] = masktimepassed[newindex] +
                                            targettimepassed[newindex]+
                                            maskingaggregates[i,6]
      }
}

#for target

for(i in 1:240){
  
  if(maskingaggregates[i,3] < maskingaggregates[i,4]){
    number = maskingaggregates[i,3]
    if(number != 1){
      newindex = number - 1
    }else {newindex = number}
    
    maskingaggregates[i,10] = masktimepassed[newindex] +
      targettimepassed[newindex]+
      maskingaggregates[i,7]
    
  }else {
    number = maskingaggregates[i,4]
    if(number != 1){
      newindex = number - 1
    }else {newindex = number}
    
    maskingaggregates[i,10] = masktimepassed[newindex] +
      targettimepassed[newindex]+
      maskingaggregates[i,8]
  }
}

#NOTE: If Any RT is NA, we assume participant didn't press anything and thus 
#their RT is total duration of mask+target = 9288ms
write.csv(maskingaggregates, file = "S3_masks.csv")
