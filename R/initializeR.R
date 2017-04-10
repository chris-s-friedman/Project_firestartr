InitializeR <- function(projectpath = NULL){
  dir.create(paste(projectpath, "R", sep = "/"))
  dir.create(paste(projectpath, "figs", sep = "/"))
  dir.create(paste(projectpath, "output", sep = "/"))
  dir.create(paste(projectpath, "docs", sep = "/"))
}
