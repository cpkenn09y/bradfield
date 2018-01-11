require 'spec_helper'

describe "RESP" do

  describe "#encode" do

    context "Simple Strings" do

      context "success" do

        it "should have a prefix of '+' and suffix of '\\r\\n'" do
          expect(RESP.encode("OK")).to eql('+OK\r\n')
        end

      end

      context "errors" do

        it 'should not allow "\n"' do
          expect(RESP.encode('Zasdasasf\n')).to eql('-ERR illegal character \n')
        end

      end

    end

  end


end
