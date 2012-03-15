require "spec_helper"

describe Nfe::Template::Ipint do
  let(:view) { described_class.new }

  context "rendering" do
    subject { view.render }

    it do
      xml("IPINT", subject).should == xml("IPINT")
    end
  end
end
