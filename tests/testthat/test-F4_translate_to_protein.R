test_that("codons from mRNA sequence is correctly translated into protein", {
  expect_equal(translation("ABC"),"NA")
  expect_equal(translation("CGU"), "R")
  expect_equal(translation(make_codons(mRNA = "AUCGAUGCA")), "IDA")
})
