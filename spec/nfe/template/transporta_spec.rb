require "spec_helper"

describe Nfe::Template::Transporta do
  let(:view) { transporta }

  context "rendering" do
    subject { view.render }

    it do
      xml("transporta", subject).should == xml("transporta")
    end
  end
end
