#first get the data
library(rinat)
library(dplyr)

setwd("~/science/image_net")
bounds <- c(-32.86,20,-34.3,24)

Proteas <- get_inat_obs(taxon_name = "Protea",bounds=bounds)
Restios <- get_inat_obs(taxon_name = "Restionaceae",bounds=bounds)


#restios
for (i  in 1:length(Restios$image_url)){
  download.file(url = Restios$image_url[i],destfile = paste0("~/science/image_net/Data/restio/restio_",Restios$id[i],".jpg"),method="libcurl")
}

#proteas
for (i  in 1:length(Proteas$image_url)){
download.file(url = Proteas$image_url[i],destfile = paste0("~/science/image_net/Data/protea/protea_",i,".jpg"),method="libcurl")
}

