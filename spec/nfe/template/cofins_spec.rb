require "spec_helper"

describe Nfe::Template::Cofins do
  let(:view) { cofins }

  context "rendering" do
    subject { view.render }

    it { xml("COFINS", subject).should == xml("COFINS") }
  end
end
