require "spec_helper"

describe Nfe::Template::EnderDest do
  let(:view) { ender_dest }

  context "instance" do
    subject { view }

    it "cleans up the zip" do
      subject.cep = "93265-350"
      subject.cep.should == "93265350"
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("enderDest", subject).should == xml("enderDest")
    end
  end
end
