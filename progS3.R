#issues found in bdvis package and my workarounds are commented

setwd("C:\\Users\\admin\\Desktop\\GCI");
library(bdvis);
library(rinat);
jap <- get_inat_obs_project("flora-of-japan");
japf <- format_bdvis(jap);
tjapf <- gettaxo(japf);
taxotree(tjapf);
mapgrid(japf, ptype = 'species', region = c("Japan"), collow = 'red', colhigh = 'green');

#need to change column Scientific.name to scientific_name as distrigraph does not work without it
names(japf)[names(japf) ==  "Scientific.name"] <- "scientific_name";

distrigraph(japf, ptype="species", col= "purple", type ="s")
distrigraph(japf, ptype="cell", col= "#00FFBF")

#distrigraph(japf, ptype = "efforts") Error in as.Date.default(indf$Date_collected, na.rm = T) : do not know how to convert 'indf$Date_collected' to class “Date”
#this is fixed by manual conversion later on


#need to change date.observed to Date_collected
names(japf)[names(japf)=="date.observed"] <- "Date_collected";
chronohorogram(japf);

tempolar(japf, color = "FF00ED" , title = "Weekly", plottype = "p", timescale = "w");
tempolar(japf, color = "FF00ED" , title = "Daily", plottype = "s", timescale = "d");
tempolar(japf, color = "FFD000", title = "Monthly", plottype = 'r', timescale = 'm');

#need to convert japf#Date_collected to Date class
japf#Date_collected <- as.Date(japf#Date_collected, format = "%Y/%m/%d");
distrigraph(japf, ptype = "efforts");
distrigraph(japf, ptype = "effortspecies");