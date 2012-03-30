require "spec_helper"

describe Nfe::Template::Icmssn102 do
  let(:view) { icmssn102 }

  context "rendering" do
    subject { view.render }

    it do
      xml("ICMSSN102", subject).should == xml("ICMSSN102", nil, "nfe_3.xml")
    end
  end
end
