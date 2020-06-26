test_that("test use", {

  xml_filenames <- c(tempfile(), tempfile())
  inference_model <- beautier::create_test_inference_model()
  beautier::create_beast2_input_file_from_model(
    input_filename = beautier::get_fasta_filename(),
    output_filename = xml_filenames[1],
    inference_model = inference_model
  )
  beautier::create_beast2_input_file_from_model(
    input_filename = beautier::get_fasta_filename(),
    output_filename = xml_filenames[2],
    inference_model = inference_model
  )

  inference_models_out <- create_inference_models_from_files(
    xml_filenames = xml_filenames
  )
  expect_equal(2, length(inference_models_out))
  beautier::check_inference_models(inference_models_out)
})
