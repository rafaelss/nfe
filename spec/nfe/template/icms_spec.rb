require "spec_helper"

describe Nfe::Template::Icms do
  let(:view) { icms }

  context "rendering" do
    subject { view.render }

    it do
      xml("ICMS", subject).should == xml("ICMS")
    end
  end
end
