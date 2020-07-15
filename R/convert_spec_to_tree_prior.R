#' Convert the \code{spec} to a tree prior
#' @param spec the XML \code{spec} attribute
#' @author Richèl J.C. Bilderbeek
#' @export
convert_spec_to_tree_prior <- function(
  spec
) {
  if (spec == "beast.evolution.speciation.YuleModel") {
    return(beautier::create_yule_tree_prior())
  }
  if (spec == "beast.evolution.speciation.BirthDeathGernhard08Model") {
    return(beautier::create_bd_tree_prior())
  }

  stop("Invalid 'spec'. Actual value: ", spec)
}
