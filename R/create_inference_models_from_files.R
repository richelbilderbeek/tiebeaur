#' Create one or more BEAST2 inference models from one or more BEAST2
#' XML input files.
#' @param xml_filenames paths to one or more BEAST2 XML input files,
#'   as can be created by BEAUti or beautier
#' @export
create_inference_models_from_files <- function(
  xml_filenames
) {
  inference_models <- list()
  for (i in seq_along(xml_filenames)) {
    inference_models[[i]] <- tiebeaur::create_inference_model_from_file(
      xml_filenames[i]
    )
  }
  inference_models
}
