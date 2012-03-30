require "spec_helper"

describe Nfe::Template::Ide do
  let(:view) { ide }

  context "instance" do
    subject { view }

    it "returns the digit based on nf's id" do
      subject.c_dv.should == 0
    end

    it "defaults to 55 if mod is not set" do
      described_class.new.mod.should == 55
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("ide", subject).should == xml("ide")
    end
  end
end
