#Using Python in R

#Import the reticulate library
library(reticulate)

#Optional- Pick the specific Python environment that you'd like to use if you have the location
use_python("/usr/local/bin/python")

#If you don't actually have Python installed (and chances are, you don't)
#running the following lines will also install Miniconda for you/
py_run_string("import numpy as np")
py_run_string("my_python_array = np.array([2,4,6,8])")


#Sometimes you need to install a Python library. This is how you do this:
py_install("tabula-py")
py_run_string('import tabula')

# Read remote pdf into list of DataFrame
py_run_string("df2 = tabula.read_pdf('https://github.com/tabulapdf/tabula-java/raw/master/src/test/resources/technology/tabula/arabic.pdf')")
data<-py$df2

py_run_string("df3 = tabula.read_pdf('~/git/R-Python_Training/2015TaxableLandBookComplet.pdf',pages='all')")
data2<-py$df3