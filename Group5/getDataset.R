library("tools")
getDataset <- function(){
  datasetName <- readline(prompt="Enter Dataset Name: ")
  if(file.exists(datasetName)){
    if(file_ext(datasetName) == "csv") {
      dataset <- read.csv(datasetName)
    }
    else {
      dataset <- load(datasetName)
    }
    return(dataset)
  } else {
    print("No file with that name exists...")
    break
  }
}
getDataset()