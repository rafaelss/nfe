require "spec_helper"

describe Nfe::Template::Dest do
  context "rendering" do
    subject { view.render }

    describe "legal person" do
      let(:view) { dest(:cnpj => "02.536.490/0001-70") }

      it do
        xml("dest", subject).should == xml("dest")
      end
    end

    describe "natural person" do
      let(:view) { dest(:cpf => "000.000.000-00", :x_nome => "FULANO DE TAL") }

      it do
        xml("dest", subject).should == xml("dest", nil, "nfe_2.xml")
      end
    end
  end
end
