require "spec_helper"

describe Nfe::Template::InfNfe do
  let(:view) { inf_nfe }

  before do
    view.ide.should_receive(:c_nf).any_number_of_times.and_return("00300000")
  end

  context "instance" do
    subject do
      view.tap do |v|
        v.ide = ide(:d_emi => "2011-02-10", :n_nf => 7)
        v.ide.should_receive(:c_nf).and_return("84037270")
        v.emit = emit(:cnpj => "58.716.523.0001/19")
      end
    end

    its(:id) do
      should == "3511025871652300011955001000000007184037270"
    end

    its(:c_dv) do
      should == "6"
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("infNFe", subject).should == xml("infNFe")
    end
  end
end
