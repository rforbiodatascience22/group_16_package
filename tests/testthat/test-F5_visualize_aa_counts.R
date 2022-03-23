# Not sure what best test would be

test_that("visualization", {
  expect_equal(visualize_aa_counts("LTDGIHRSGDALGTAFYNSVPLGMRCAKEASFLLVKPNREIIVKTQWDEQ"),
               visualize_aa_counts("LTDGIHRSGDALGTAFYNSVPLGMRCAKEASFLLVKPNREIIVKTQWDEQ"))

})