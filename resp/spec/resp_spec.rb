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
          expect(RESP.encode('Zasdasasf\n')).to eql('-ERR illegal line feed character\r\n')
        end

        it 'should not allow "\r"' do
          expect(RESP.encode('Zasdasasf\r')).to eql('-ERR illegal carriage return character\r\n')
        end

      end

    end

    context "Integers" do

      it 'should turn 0 into ":0\r\n"' do
        expect(RESP.encode(0)).to eql(':0\r\n')
      end

      it 'should turn 1000 into ":1000\r\n"' do
        expect(RESP.encode(1000)).to eql(':1000\r\n')
      end

    end

  end


end
