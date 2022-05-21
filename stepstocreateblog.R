### My portfolio
##Here's some of the work I've done in the last days

###First of all, I am going to create a website to post my portfolio using
###Github and Distill, a very interesting package in R, that helps us to create
###a very well constructed blog

#To start you should have installed Git and the packages:
packages2download <- c("tidyverse", "usethis", "distill", "ggthemes", "here", "infer")

#Loading libraries
library(tidyverse)
library(usethis)
library(distill)
library(ggthemes)
library(infer)
library(here)

#blog e github


#1 step:
#Installing "usethis" and "distill" packages to start the script:

install.packages(c("usethis", "distill"))

#2 step:
#usethis::create_package("blog")

#This is going to lead us to another RStudio Page, that branches inside the blog
#I will not do this because we already are in a project!

#3 step:
#now we have to put our github username and our e-mail to confirm connection
usethis::use_git_config(
  user.name = "gbastosg",
  user.email = "professor.guilhermebastos@gmail.com")

#step 3.5 (copy this token and save it for the next step):
usethis::create_github_token()

#one more step!:
gitcreds::gitcreds_set()

#step 4 (now we will start using Git in R):
usethis::use_git()

#now we are going to get out of the project and then get back to were
#we once belonged

#step 5 (start github on R again):
usethis::use_github()

#step 6 (let's generate our page):
usethis::use_github_pages("master", "/docs")

#step 7:
file.create(".nojekyll")

#step 8 (using distill to create out blog):
distill::create_blog(".", "guilhermesportfolio", gh_pages = TRUE)

#step 9 (our first post, it will be just a test):
distill::create_post("Testing!")

#Great! Now we have a blog, and a first post. If you are working in RStudio
#(which I recommend) you must have seen a new window popup with a .Rmd file
#That's a MarkDown document where you can write your stuff and publish on your
#blog hosted on github.


