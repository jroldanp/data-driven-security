# This is to generate a new temporaries file to allocate all JSONs feed data
# published in https://github.com/MITRECND/mitrecnd.github.io/tree/master/_data
mapping.src <- tempfile(fileext = ".json")

opportunities.src <- tempfile(fileext = ".json")

procedures.src <- tempfile(fileext = ".json")

tactics.src <- tempfile(fileext = ".json")

techniques.src <- tempfile(fileext = ".json")

use_cases.src <- tempfile(fileext = ".json")

# To download content of each JSON into each temporary file

download.file(url = "https://github.com/MITRECND/mitrecnd.github.io/raw/master/_data/mapping.json",
              destfile = mapping.src )

download.file(url = "https://github.com/MITRECND/mitrecnd.github.io/raw/master/_data/opportunities.json",
              destfile = opportunities.src )

download.file(url = "https://github.com/MITRECND/mitrecnd.github.io/raw/master/_data/procedures.json",
              destfile = procedures.src )

download.file(url = "https://github.com/MITRECND/mitrecnd.github.io/raw/master/_data/tactics.json",
              destfile = tactics.src )

download.file(url = "https://github.com/MITRECND/mitrecnd.github.io/raw/master/_data/techniques.json",
              destfile = techniques.src )

download.file(url = "https://github.com/MITRECND/mitrecnd.github.io/raw/master/_data/use_cases.json",
              destfile = use_cases.src )


# Use of jsonlite function to store information into DataFrames

mapping <- jsonlite::fromJSON(mapping.src)

opportunities <- jsonlite::fromJSON(opportunities.src)

procedures <- jsonlite::fromJSON(procedures.src)

tactics <- jsonlite::fromJSON(tactics.src)

techniques <- jsonlite::fromJSON(techniques.src)

use_cases <- jsonlite::fromJSON(use_cases.src)


# From here relationship betweend from each DataFrame have to be done
