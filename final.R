library(readr)
library(readxl)
library(igraph)
library(dplyr)

citation <- read_csv("./data/citations.csv")
paper <- read_xlsx("./data/papers.xlsx")

paper_subset <- paper %>%
  select(UT, Research_Areas)

#str(citation)

#str(paper)

#length(unique(paper$Research_Areas))
#length(unique(paper$UT))
#length(unique(citation$citing))
#length(unique(citation$cited))

g1 <- graph_from_data_frame(d = citation, vertices = paper, 
                            directed = FALSE)
plot(g1)
