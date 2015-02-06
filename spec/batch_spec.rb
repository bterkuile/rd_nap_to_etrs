require 'spec_helper'

RSpec.describe RdNapToEtrs::Batch do
  # VALUES TAKEN FROM Appendix		RDNAPTRANSTM2008 test sheet
  let(:rd_input) do
    [
      {x: 117380.12, y: 575040.34, nap: 1.0},
      {x: 247380.56, y: 604580.78, nap: 2.0},
      {x: 155000.0,  y: 463000.0,  nap: 0.0},
      {x: 155000.0,  y: 463000.0,  nap: 100.0},
      {x: 16460.91,  y: 377380.23, nap: 3.0},
      {x: 182260.45, y: 311480.67, nap: 200.0},
      {x: 64640.89,  y: 440700.01, nap: 4.0},
      {x: 400000.23, y: 100000.45, nap: 5.0},
      {x: 100000.67, y: 300000.89, nap: 6.0},
      {x: 100000.67, y: 350000.89, nap: 6.0},
      {x: 79000.01,  y: 500000.23, nap: 7.0},
      {x: 50000.45,  y: 335999.67, nap: 8.0}
    ]
  end

  let(:expected_result) do
    [
      {lat: 53.160753042, lng: 4.824761912, h: 42.8614},
      {lat: 53.41948205,  lng: 6.776726674, h: 42.3586},
      {lat: 52.155172897, lng: 5.387203657, h: 43.2551},
      {lat: 52.15517291,  lng: 5.387203658, h: 143.2551},
      {lat: 51.368607152, lng: 3.397588595, h: 47.4024},
      {lat: 50.792584916, lng: 5.773795548, h: 245.9478},
      {lat: 51.947393898, lng: 4.072887101, h: 47.5968},
      {lat: 48.84303021,  lng: 8.723260235, h: 52.0289},
      {lat: 50.687420392, lng: 4.608971813, h: 51.6108},
      {lat: 51.136825197, lng: 4.601375361, h: 50.9672},
      {lat: 52.482440839, lng: 4.268403889, h: 49.9436},
      {lat: 51.003976532, lng: 3.89124783,  h: 52.7427}
    ]
  end

  let(:points){ rd_input.map{ |rd_coord| RdNapToEtrs::Point.new(x: rd_coord[:x], y: rd_coord[:y], nap: rd_coord[:nap]) } }


  describe "Valid point" do
    let(:point){ RdNapToEtrs::Point.new(x: 117380.1200, y: 575040.3400, nap: 1) }
    it "Converts the point and leaves the object as it is" do
      described_class.new.trans2008 points
      points.each.with_index do |point, i|
        point.lat.should be_within( 1e-6 ).of( expected_result[i][:lat] )
        point.lng.should be_within( 1e-6 ).of( expected_result[i][:lng] )
        point.h.should be_within( 1e-3 ).of( expected_result[i][:h] )
      end
    end

    it "does not raise when nap is not set" do
      point.nap = nil
      expect{ described_class.new.trans2008 [point] }.not_to raise_error
    end
  end
end
