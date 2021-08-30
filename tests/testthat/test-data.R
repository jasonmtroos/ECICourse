test_that("loading works", {
  d <- get_ECI_data('module-2-tutorial')
  expect_true(all(c('Y', 'D') %in% colnames(d)))
  expect_true(!("M2_experiment" %in% ls(environment())))
  expect_error(get_ECI_data('asdfasdf'), 'unloadNamespace')
})
