require "spec_helper"

describe Nfe::Template::InfNfe do
  let(:view) { inf_nfe }

  context "rendering" do
    subject { view.render }

    it do
      xml("infNFe", subject).should == xml("infNFe")
    end
  end
end
