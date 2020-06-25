#' Convert the \code{spec} to a tree prior
#' @param spec the XML \code{spec} attribute
#' @export
convert_spec_to_tree_prior <- function(
  spec
) {
  if (spec == "beast.evolution.speciation.YuleModel") {
    return(beautier::create_yule_tree_prior())
  }
  stop("Invalid 'spec'. Actual value: ", spec)
}
