##############################################################################
##
## NA's via the NAtype
##
## Inspirations:
##  * R's NA's
##  * Panda's discussion of NA's:
##    http://pandas.pydata.org/pandas-docs/stable/missing_data.html
##  * NumPy's analysis of the issue:
##    https://github.com/numpy/numpy/blob/master/doc/neps/missing-data.rst
##
## NAtype is a composite type representing missingness:
## * An object of NAtype can be generated by writing NA
##
##############################################################################

type NAtype; end
const NA = NAtype()

show(io::IO, x::NAtype) = print(io, "NA")

type NAException <: Exception
    msg::String
end

length(x::NAtype) = 1
size(x::NAtype) = ()
ndims(x::NAtype) = 0

isna(x::NAtype) = true