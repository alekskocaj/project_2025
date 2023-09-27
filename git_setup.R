# use a function without loading the package:
# package::function
usethis::use_git_config(
  user.name = "Aleksander Kocaj", # <-- change to your name
  user.email = "alekskocaj@googlemail.", # <-- and your email
  init.defaultBranch = "main") # <-- not necessary but kinder than 'master'

usethis::use_git()
