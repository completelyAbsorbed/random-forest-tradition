
# loading pdf into R

# working with https://alexluscombe.ca/blog/getting-your-.pdfs-into-r/ to start

library(pdftools)
library(tesseract) # for OCR with pdftools library

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
