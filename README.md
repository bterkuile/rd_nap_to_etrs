RdNapToEtrs
===========

This gem converts points in the RD/NAP 2008 format to ETRS89. It handles
batches of points. 

## Use inside your ruby program

Initialize like:

```ruby
point = RdNapToEtrs::Point.new(x: 117380.1200, y: 575040.3400, nap: 1)
batch =  RdNapToEtrs::Point.new
batch.trans2008 [point]

# Now the lat, lng and h values of the point are set

point.lat #=> 53.160753042
point.lng #=> 4.824761912
point.h   #=> 42.8614
```

## Command line
There is also a command line tool for converting coordinates:
```bash
rd_nap_to_etrs 117380.1200 575040.3400 1.0000
```
will result in
```
53.160753041771386 4.824761912426986 42.86140355819891
```
on the command line

See the [WikiPedia](http://nl.wikipedia.org/wiki/Rijksdriehoeksco%C3%B6rdinaten) page for more info on the coordinate system.
