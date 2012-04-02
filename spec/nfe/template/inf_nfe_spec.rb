require "spec_helper"

describe Nfe::Template::InfNfe do
  let(:view) { inf_nfe }

  before do
    view.ide.should_receive(:c_nf).any_number_of_times.and_return("00300000")
  end

  context "instance" do
    subject { view }

    its(:id) do
      should == "3510115871652300011955001000000001100300000"
    end

    its(:c_dv) do
      should == "0"
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("infNFe", subject).should == xml("infNFe")
    end
  end
end
