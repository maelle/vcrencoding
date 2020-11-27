test_that("foo", {
  vcr::use_cassette("ropenaq-cities", ropenaq::aq_cities(page = 1))
})

test_that("Queries work with spaces and accents",{
  vcr::use_cassette("buildQueries_accents", {
    result1 <- ropenaq::aq_measurements(city = "Heinz+Ott", country = "DE",
                               limit = 1, page = 1)
    expect_is(result1, "tbl_df")
    result2 <- ropenaq::aq_measurements(city = "J%EF%BF%BDrgen+Friesel", country = "DE",
                               limit = 1, page = 1)
    expect_is(result2, "tbl_df")
  })
})
