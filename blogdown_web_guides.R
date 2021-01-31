browseURL("https://alison.rbind.io/post/new-year-new-blogdown/")
# install blogdown --------------------------------------------------------

remotes::install_github("rstudio/blogdown")

# use first blogdown function to create a website with Hugo Wowchemy "starter-academic" project
library(blogdown)
new_site(theme = "wowchemy/starter-academic")
# you can use blogdown::serve_site() or the "Serve Site" addin to preview your site locally

blogdown::serve_site()
# create content
# you can use .Rmd knit to .html or 
# .Rmarkdown knit to .markdown - preferred

# use the console to author a new post; I'll name my post "Hi Hugo":

blogdown::new_post(title = "Data manipulation with data-table",
                   ext = ".Rmarkdown",
                   subdir = "post")
# you can configure your blogdown::config_Rprofile() as follows:
# blogdown::config_Rprofile()
# options(
#   # to automatically serve the site on RStudio startup, set this option to TRUE
#   blogdown.serve_site.startup = FALSE,
#   # to disable knitting Rmd files on save, set this option to FALSE
#   blogdown.knit.on_save = FALSE,
#   blogdown.author = "Basil Okola",
#   blogdown.ext = ".Rmarkdown",
#   blogdown.subdir = "post" ,
#   # build .Rmd to .html (via Pandoc); to build to Markdown, set this option to 'markdown'
#   blogdown.method = 'html'
# )
# remember to restart R afterwards and run serve_site() after restart

# update .gitignore file 
file.edit(".gitignore")
# check
blogdown::check_gitignore()
# check your content too with 
blogdown::check_content()

rstudioapi::navigateToFile("config.yaml", line = 3)
# Our site has a netlify.toml file, which sets us the necessary
# settings for letting Netlify build our site for us and then publish it
blogdown::config_netlify()

# check netlify.toml with blogdown
blogdown::check_netlify()
blogdown::check_hugo()

# configur your site by editing `config/_default/params.toml` file
rstudioapi::navigateToFile("config/_default/params.toml")
blogdown::check_content()
blogdown::check_config()
rstudioapi::navigateToFile("config.yaml", line = 15)
rstudioapi::navigateToFile("content/authors/admin/_index.md")
