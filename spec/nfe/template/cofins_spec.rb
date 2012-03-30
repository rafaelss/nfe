require "spec_helper"

describe Nfe::Template::Cofins do
  context "rendering" do
    subject { view.render }

    describe "COFINSAliq" do
      let(:view) { cofins }

      it { xml("COFINS", subject).should == xml("COFINS") }
    end

    describe "COFINSNT" do
      let(:view) { cofins(:cofinsnt => cofinsnt) }

      it { xml("COFINS", subject).should == xml("COFINS", nil, "nfe_3.xml") }
    end
  end
end
