if(!require("pak")) install.packages("pak")

new <- c("gh",
         "gitcreds",
         "usethis")

pak::pak(new)

library(gh)
library(gitcreds)
library(usethis)

usethis::git_sitrep()

usethis::use_git_config(

  user.name = "Ayaka Monoi",
  user.email = "monoi.ayaka@gmail.com",
  github.user = "ayakamon")
  
usethis::create_github_token()

gitcreds::gitcreds_set()

usethis::git_default_branch_configure(name="name")

usethis::create_project(path = "cases")
