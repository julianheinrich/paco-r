# Returns a vector of indexes
#' @export
axis.order <- function(x, by = "random") {
  if (!is.data.frame(x)) {
    x <- as.data.frame(x)
  }
  n <- ncol(x)
  ret <- colnames(x)

  if (by == "random") {
    ret <- sample(ret, n)
  } else if (by == "type") {
    numeric <- sapply(x, is.numeric)
    ret <- ret[order(numeric)]
  } else if (by == "correlation") {
    permutation <- hamiltonian(as.dist(cor(x)))
    ret <- ret[permutation]
  } else if (by == "euclidean") {
    permutation <- hamiltonian(dist(t(x)))
    ret <- ret[permutation]
  }
  ret
}

hamiltonian <- function(dist) {
  weighted.hamiltonians <- weighted_hpaths(dist)
  # pick only first
  indexes <- weighted.hamiltonians[1,]
}
