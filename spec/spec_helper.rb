$: << File.dirname(__FILE__) + '/../ext'
require 'pry'
require 'rd_nap_to_etrs'
# VIM TRICKS
# :s/assert_equal \([^,]\+\), \(.*\)/expect( \2 ).to eq \1  
# :s/assert_equal \[\([^\]]\+\)\], \(.*\)/expect( \2 ).to eq [\1]

RSpec.configure do |config|

end

