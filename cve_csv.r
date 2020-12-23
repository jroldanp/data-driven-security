# This is to generate a new temporary file to allocate feed data
cves.src <- tempfile(fileext = ".csv")

# To download content into temporary file
download.file(url = "https://cve.mitre.org/data/downloads/allitems.csv",
              destfile = cves.src)

# Use of read.csv function from package readr. To have dataframe properly
# formatted we skip 10 first rows where there is no tabulated data, we set 
# header as FALSE since there is no header with fileds and we define them
# accordingly using col.names argument
#
cve <- read.csv(cves.src, header = FALSE,col.names = c("CVE Name",
                                                       "Status",
                                                       "Description",
                                                       "References",
                                                       "Phase",
                                                       "Votes",
                                                       "Comments"),skip = 10)

# More formatting or new variables to be done
