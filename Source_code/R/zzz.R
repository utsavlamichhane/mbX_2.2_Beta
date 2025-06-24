#’ @importFrom utils globalVariables
NULL

.onLoad <- function(libname, pkgname) {
  if (getRversion() >= "2.15.1") {
    utils::globalVariables(
      c(
        # variables used in ezstat()
        "P_value", "taxa", "group1", "group2", "statistic",
        "p.adj", "P.adj",                # ← make sure both are here
        "Comparison1", "Comparison2", "Comparison",
        "FDR_P_value", "Group", "Median", "Mean", "CLD",
        "y_max", "y", "Letter",
        # the data-table/dplyr operator
        ":="
      )
    )
  }
}
