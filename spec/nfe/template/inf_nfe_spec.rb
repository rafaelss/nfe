require "spec_helper"

describe Nfe::Template::InfNfe do
  let(:view) { inf_nfe }

  before do
    view.should_receive(:srand).and_return("00300000")
  end

  context "instance" do
    subject { view }

    its(:id) do
      should == "NFe35101158716523000119550010000000011003000000"
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("infNFe", subject).should == xml("infNFe")
    end
  end
end
