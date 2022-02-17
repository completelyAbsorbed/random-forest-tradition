
# loading pdf into R

# working with https://alexluscombe.ca/blog/getting-your-.pdfs-into-r/ to start

library(pdftools)
library(tesseract) # for OCR with pdftools library
library(stringr)

dir <- "C:/Users/liz/iCloudDrive/dhamma/canon/"  # suppress this for github #############################################################################
suttas_filename <- "SuttaPitaka211009.pdf"

suttas <- pdf_text(paste(dir,
                         suttas_filename,
                         sep = ""))

length(suttas) # 4044

# suttas[1111]

cat(suttas[1112])

cat(suttas[1113]) # new verse header (MN 82)

cat(suttas[1107]) # new verse header (MN 78)

suttas[1107] # looking for format cues in note reference (link not shown, just number) numeric representation may be the cue 

cat(suttas[1107:1113])

##### make functions to work towards separating passages #####
### 
### current recipe theory : two spaces, but not three, and not two spaces + \n 
### 
### will want to look into apply() family and smart combination logic
### 
### will need to use +1 on newline_two_space output

index_two_space <- function(string){
  result <- str_locate_all(string = string,
                           pattern = '  ')
  return(result)
}

index_three_space <- function(string){
  result <- str_locate_all(string = string,
                           pattern = '   ')
  return(result)
}

index_newline_two_space <- function(string){
  result <- str_locate_all(string = string,
                           pattern = '\n  ')
  return(result)
}


