test_that("foo", {
  vcr::use_cassette("ropenaq-cities", ropenaq::aq_cities(page = 1))
})
