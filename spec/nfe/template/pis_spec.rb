require "spec_helper"

describe Nfe::Template::Pis do
  context "rendering" do
    subject { view.render }

    describe "pis_aliq" do
      let(:view) { pis }

      it do
        xml("PIS", subject).should == xml("PIS")
      end
    end

    describe "pisnt" do
      let(:view) { pis(:pisnt => pisnt) }

      it do
        xml("PIS", subject).should == xml("PIS", nil, "nfe_3.xml")
      end
    end
  end
end
