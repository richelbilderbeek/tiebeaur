test_that("use", {
  tree_prior <- convert_spec_to_tree_prior(
    "beast.evolution.speciation.YuleModel"
  )
  expect_true(beautier::is_yule_tree_prior(tree_prior))
})

test_that("abuse", {
  expect_error(
    convert_spec_to_tree_prior("nonsense"),
    "Invalid 'spec'"
  )
})
