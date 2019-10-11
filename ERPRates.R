## Data Processing
# Reading the file
library(XML)
library(methods)
content <- xmlParse(file = "./datasets/ERPRates.xml")

rootNode <- xmlRoot(content)
xmlSApply(rootNode,xmlValue)