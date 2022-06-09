#!/usr/bin/env Rscript

# Helper function to insert TOML
InsertHeader = function(fileName) {
  fileContents = readLines(fileName)
  newHeader = readLines("src/header")
  fileWithNewHeader = c(newHeader, fileContents)
  writeLines(fileWithNewHeader, fileName)
}

# Store file names of files already present
contents0 = dir()

# Post-process .md file
InsertHeader("src/index.md")

# Move new file one level up

system(paste("mv", "src/index.md", "index.md"))
