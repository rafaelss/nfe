require "spec_helper"

describe Nfe::Template::Prod do
  let(:view) { prod }

  context "instance" do
    subject { view }

    it "formats product price" do
      subject.v_prod = 89.0
      subject.v_prod.should == "89.00"
    end

    it "returns nil if v_frete is zero" do
      subject.v_frete = 0
      subject.v_frete.should be_nil
    end

    it "returns nil if v_frete is nil" do
      subject.v_frete = nil
      subject.v_frete.should be_nil
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("prod", subject).should == xml("prod")
    end

    it "should not add tag vFrete if v_frete is nil" do
      view.v_frete = nil
      xml("prod", subject).should == xml("prod", nil, "nfe_2.xml")
    end

    it "should not add tag vFrete if v_frete is zero" do
      view.v_frete = 0
      xml("prod", subject).should == xml("prod", nil, "nfe_2.xml")
    end
  end
end
