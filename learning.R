
# loading pdf into R

# working with https://alexluscombe.ca/blog/getting-your-.pdfs-into-r/ to start

library(pdftools)
library(tesseract) # for OCR with pdftools library

dir <- "C:/Users/liz/iCloudDrive/dhamma/canon/"
suttas_filename <- "SuttaPitaka211009.pdf"

suttas <- pdf_text("")