require "spec_helper"

describe Nfe::Template::Prod do
  let(:view) { prod }

  context "instance" do
    subject { view }

    it "formats product price" do
      subject.v_prod = 89.0
      subject.v_prod.should == "89.00"
    end
  end

  context "rendering" do
    subject { view.render }

    it do
      xml("prod", subject).should == xml("prod")
    end
  end
end
