require "spec_helper"

describe Nfe::Template::Pisnt do
  let(:view) { pisnt }

  context "rendering" do
    subject { view.render }

    it do
      xml("PISNT", subject).should == xml("PISNT", nil, "nfe_3.xml")
    end
  end
end
