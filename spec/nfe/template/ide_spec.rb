require "spec_helper"

describe Nfe::Template::Ide do
  let(:view) { ide }

  context "instance" do
    subject { view }

    before do
      view.nfe_id = "3511025871652300011955001000000007184037270"
    end

    it "returns the digit based on nf's id" do
      subject.c_dv.should == 6
    end

    it "defaults to 55 if mod is not set" do
      described_class.new.mod.should == 55
    end
  end

  context "rendering" do
    subject { view.render }

    before do
      view.should_receive(:c_nf).and_return("00300000")
    end

    it do
      xml("ide", subject).should == xml("ide")
    end
  end
end
