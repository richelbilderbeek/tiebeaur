test_that("use", {

  beast2_filename <- tempfile()
  inference_model <- beautier::create_test_inference_model()
  beautier::create_beast2_input_file_from_model(
    input_filename = beautier::get_fasta_filename(),
    output_filename = beast2_filename,
    inference_model = inference_model
  )

  inference_model_out <- create_inference_model_from_file(
    xml_filename = beast2_filename
  )
  expect_silent(beautier::check_inference_model(inference_model_out))
  expect_equal(
    inference_model$tree_prior$name,
    inference_model_out$tree_prior$name
  )
})
