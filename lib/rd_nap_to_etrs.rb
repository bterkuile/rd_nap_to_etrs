#SOURCES:
#http://blog.x-aeon.com/2012/11/28/packaging-ruby-c-extensions-in-nice-gems/
#http://java.ociweb.com/mark/NFJS/RubyCExtensions.pdf
#http://www.angelfire.com/electronic2/issac/rb_cpp_ext_tut.txt
#
#Now tested in the fpi-info project inside the lib/rd_nap_to_etrs direcory with:
#  ruby -Ilib -Iext bin/rd_nap_to_etrs 117380.1200 575040.3400
require 'rd_nap_to_etrs/point'
require 'rd_nap_to_etrs/batch'
require "rd_nap_to_etrs/trans2008"
require 'pry'
batch = RdNapToEtrs::Batch.new
point = RdNapToEtrs::Point.new(x: 117380.1200, y: 575040.3400)
# batch.trans2008 [point]
#binding.pry
