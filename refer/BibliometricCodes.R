###Bibliometrix codes ###
install.packages("bibliometrix")
library(bibliometrix)
install.packages("rlang")

#To upgrade
install.packages("remotes")
library(remotes)
remotes::install_git("massomoaria/bibliometrix")

#torun biblioshiny
library(bibliometrix)
biblioshiny()
