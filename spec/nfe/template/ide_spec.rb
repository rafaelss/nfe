require "spec_helper"

describe Nfe::Template::Ide do
  let(:view) { ide }

  context "instance" do
    subject { view }

    its(:c_nf) { should have(8).items }

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
