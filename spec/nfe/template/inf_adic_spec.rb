require "spec_helper"

describe Nfe::Template::InfAdic do
  let(:view) { inf_adic }

  context "rendering" do
    subject { view.render }

    it do
      xml("infAdic", subject).should == xml("infAdic")
    end
  end
end
