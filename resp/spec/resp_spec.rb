require 'spec_helper'

describe "RESP" do

  context "encode" do

    it "should" do
      expect(RESP.encode("OK")).to eql('+OK\r\n')
    end

  end


end
