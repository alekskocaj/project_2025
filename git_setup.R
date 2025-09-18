# use a function without loading the package:
# package::function
usethis::use_git_config(
  user.name = "Aleksander Kocaj", # <-- change to your name
  user.email = "alekskocaj@googlemail.", # <-- and your email
  init.defaultBranch = "main") # <-- not necessary but kinder than 'master'

usethis::use_git()

usethis::create_github_token(description = "Token for Repro Workshop 2023 Test")

gitcreds::gitcreds_set() # <-- Token must *not* go into brackets, paste when asked

usethis::gh_token_help() # Verify that everything is in order

usethis::use_github() # To activate GitHub and upload your files to the public web
