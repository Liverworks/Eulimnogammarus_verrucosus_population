#install.packages("phangorn")
library("phangorn")

network <- read.nexus.networx("/home/anna/ib/raki/coi_full_fix.nex")

nn <- 940 

 lva <- rep("", nn)
 lva[network$translate$node] <- c("\U2B24")
 lvc <- adjustcolor(rep("white", nn), alpha.f=0.5)

 lvc[network$translate$node[c(grep("Bolshie_Koty", network$translate$label, fixed=TRUE))]] <- "gold"  
 lvc[network$translate$node[c(grep("Warnachka", network$translate$label, fixed=TRUE))]] <- "gold" 
 lvc[network$translate$node[c(grep("Bolshoy_Ushk", network$translate$label, fixed=TRUE))]] <- "gold"
 lvc[network$translate$node[c(grep("Maloe_More", network$translate$label, fixed=TRUE))]] <- "gold"
 lvc[network$translate$node[c(grep("UlanNur", network$translate$label, fixed=TRUE))]] <- "gold"
 lvc[network$translate$node[c(grep("Severobaikal", network$translate$label, fixed=TRUE))]] <- "gold"  
 lvc[network$translate$node[c(grep("Kotelnikovsk", network$translate$label, fixed=TRUE))]] <- "gold"
 lvc[network$translate$node[c(grep("Zavorotnaya", network$translate$label, fixed=TRUE))]] <- "gold"  
 lvc[network$translate$node[c(grep("Solontsov", network$translate$label, fixed=TRUE))]] <- "gold"  
 lvc[network$translate$node[c(grep("Pokoiniki", network$translate$label, fixed=TRUE))]] <- "gold"  
 lvc[network$translate$node[c(grep("Onguryon", network$translate$label, fixed=TRUE))]] <- "gold"
 lvc[network$translate$node[c(grep("Olkhon", network$translate$label, fixed=TRUE))]] <- "gold"
 lvc[network$translate$node[c(grep("Listvyanka", network$translate$label, fixed=TRUE))]] <- "gold"  
  lvc[network$translate$node[c(grep("Kultuk", network$translate$label, fixed=TRUE))]] <- "red"
  lvc[network$translate$node[c(grep("Port", network$translate$label, fixed=TRUE))]] <- "red"
 lvc[network$translate$node[c(grep("Sample", network$translate$label, fixed=TRUE))]] <- "green"
  lvc[network$translate$node[c(grep("Davsha", network$translate$label, fixed=TRUE))]] <- "blue"
  lvc[network$translate$node[c(grep("UstBarguzin", network$translate$label, fixed=TRUE))]] <- "blue"
  lvc[network$translate$node[c(grep("_Nos", network$translate$label, fixed=TRUE))]] <- "blue"
 
plot(network, type="2D", show.tip.label=FALSE, show.node.label=TRUE, node.label=lva, 
     edge.width=0.5, cex=0.5, tip.color=adjustcolor(lvc, alpha.f=0.5))

# 
 network <- read.nexus.networx("/home/anna/ib/raki/west.nex")
 nn <- 940 
 lva <- rep("", nn)
 lva[network$translate$node] <- c("\U2B24")
 lvc <- adjustcolor(rep("white", nn), alpha.f=0.5)
 
 lvc[network$translate$node[c(grep("Bolshie_Koty", network$translate$label, fixed=TRUE))]] <- "orchid1"  
 lvc[network$translate$node[c(grep("Warnachka", network$translate$label, fixed=TRUE))]] <- "orchid1" 
 lvc[network$translate$node[c(grep("Bolshoy_Ushk", network$translate$label, fixed=TRUE))]] <- "lightgoldenrod1" 
 lvc[network$translate$node[c(grep("Maloe_More", network$translate$label, fixed=TRUE))]] <- "cornflowerblue"
 lvc[network$translate$node[c(grep("UlanNur", network$translate$label, fixed=TRUE))]] <- "cornflowerblue"
 lvc[network$translate$node[c(grep("Severobaikal", network$translate$label, fixed=TRUE))]] <- "green"  
 lvc[network$translate$node[c(grep("Kotelnikovsk", network$translate$label, fixed=TRUE))]] <- "green"
 lvc[network$translate$node[c(grep("Zavorotnaya", network$translate$label, fixed=TRUE))]] <- "green"  
 lvc[network$translate$node[c(grep("Solontsov", network$translate$label, fixed=TRUE))]] <- "green"  
 lvc[network$translate$node[c(grep("Pokoiniki", network$translate$label, fixed=TRUE))]] <- "green"  
 lvc[network$translate$node[c(grep("Onguryon", network$translate$label, fixed=TRUE))]] <- "green"
 lvc[network$translate$node[c(grep("Olkhon", network$translate$label, fixed=TRUE))]] <- "cornflowerblue"
 lvc[network$translate$node[c(grep("Listvyanka", network$translate$label, fixed=TRUE))]] <- "orchid1"  
 lvc[network$translate$node[c(grep("Sample", network$translate$label, fixed=TRUE))]] <- "red"
 
 plot(network, type="2D", show.tip.label=FALSE, show.node.label=TRUE, node.label=lva, 
      edge.width=0.5, cex=0.5, tip.color=adjustcolor(lvc, alpha.f=0.5))
