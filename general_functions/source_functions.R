require(tidyverse)
source_functions <- function(path){
  list.files(Sys.glob(file.path(path)), 
      full.names = TRUE) %>%
    map(source)
}
