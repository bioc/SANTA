CreateGrid <- function(
    n=100
) {
    # create a grid-like graph containing n vertices
    nr <- floor(sqrt(n))
    g <- graph.empty(n, directed=FALSE) 
    g <- add.edges(g, rbind(seq_len(n-1), 2:(n))[, c(rep(TRUE, nr-1), FALSE)]) # add edges from i to i+1 (within layer)
    g <- add.edges(g, as.numeric(rbind(seq_len(n-nr), (nr+1):n))) # add edges between layers
    g
}
