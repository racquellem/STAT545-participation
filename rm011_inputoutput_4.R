library("tidyverse")
library("here")
library("readxl")
library("here")
mri_file=here("datasets","Firas-MRI.xlsx")

mri<-read_excel(mri+file,range=A1:L12)
#Specify what range in the excel file
view(mri)

mri<-mri[,-10]
# removed that column in the excel file

#one column slice number, other one is the value of it
mri <- mri %>% 
  pivot_longer(cols= 'Slice 1':'Slice 8',
               names_to='slice_no',
               values_to='value')
