# Parallel Coordinates Library
This package is intended to provide some utility functions to work with parallel coordinates. *Note that it does not provide any functionality to plot parallel coordinates!*, please use existing plotting libraries such as the excellent [htmlwidgets](https://github.com/timelyportfolio/parcoords) for the [d3.parcoords.js](http://syntagmatic.github.com/parallel-coordinates/) library.

# Installation

```
# not on CRAN
devtools::install_git("https://github.com/julianheinrich/paco-r.git")
```

# Example Usage

Currently, the library comes with a single function only to compute various axis orderings.

## parcoords
```
library(MASS)
library(paco)

# order axes by correlation
parcoord(mtcars[, axis.order(mtcars, by = "correlation")])
```

## htmlwidget
```
library(parcoords)
data(mtcars)

# order axes by euclidean distance
parcoords(mtcars[, axis.order(mtcars, by = "euclidean")],
          reorderable = T)
```
