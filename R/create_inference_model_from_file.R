#' Create an inference model from file
#' @param xml_filename name of a BEAST2 XML input file,
#'   as can be created by BEAUti2 or
#'   using \link[beautier]{create_beast2_input_file_from_model}
#' @export
create_inference_model_from_file <- function(xml_filename) {
  inference_model <- beautier::create_test_inference_model()
  readLines(xml_filename)
  xml <- xml2::read_xml(xml_filename)
  xml_run <- xml2::xml_child(xml, "run")
  xml_run_distr <- xml2::xml_child(xml_run, "distribution")
  xml_run_distr_distr <- xml2::xml_child(xml_run_distr, "distribution")
  xml_run_distr_distr_distr <- xml2::xml_child(xml_run_distr_distr, "distribution")
  spec <- xml2::xml_attr(xml_run_distr_distr_distr, "spec")
  inference_model$tree_prior <- tiebeaur::convert_spec_to_tree_prior(spec)
  inference_model
}
