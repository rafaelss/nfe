require "spec_helper"

describe Nfe::Template::Icms do
  context "rendering" do
    subject { view.render }

    describe "00" do
      let(:view) { icms }

      it do
        xml("ICMS", subject).should == xml("ICMS")
      end
    end

    describe "102" do
      let(:view) { icms(:icmssn102 => icmssn102) }

      it do
        xml("ICMS", subject).should == xml("ICMS", nil, "nfe_3.xml")
      end
    end
  end
end
