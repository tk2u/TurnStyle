data = read.csv("./Data.Wearhouse2.csv")
mod.data = data
newlabels = c('Top','Dress','IDK','IDK','IDK','Bot','IDK','Top','Top')
mod.data$Type = factor(mod.data$Item,labels = newlabels)
 
for (outfit in 1:10){
  outfit_flag=0
  while (outfit_flag==0){
    
    top.index=sample(nrow(mod.data),1)
    bot.index=sample(nrow(mod.data),1)
    
    top=mod.data$Type[sample(nrow(mod.data),1)]
    bot=mod.data$Type[sample(nrow(mod.data),1)]

  
  if (top=="Top" & bot=="Bot") {
  
      outfit_flag=1
      print("found_outfit")
      print("----Top----")
      print(mod.data$Color[top.index])
      print(mod.data$Item[top.index])
      print(mod.data$Occasion[top.index])
      print("----Bottom----")
      print(mod.data$Color[bot.index])
      print(mod.data$Item[bot.index])
      print(mod.data$Occasion[bot.index])
   }
  }
} 
