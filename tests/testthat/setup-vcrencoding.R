library("vcr") # *Required* as vcr is set up on loading
invisible(vcr::vcr_configure(
  dir = "../fixtures",
  serialize_with = "json"
))
vcr::check_cassette_names()
Sys.setenv(VCR_VERBOSE_ERRORS=TRUE)
