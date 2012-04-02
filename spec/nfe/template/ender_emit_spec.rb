require "spec_helper"

describe Nfe::Template::EnderEmit do
  let(:view) { ender_emit }

  context "instance" do
    subject { view }

    it "strips empty characters from the begin and from the end of the value" do
      subject.x_bairro = "   neigh name    "
      subject.x_bairro.should == "neigh name"
    end

    it "cleans up the zip" do
      subject.cep = "93265-350"
      subject.cep.should == "93265350"
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("enderEmit", subject).should == xml("enderEmit")
    end
  end
end
