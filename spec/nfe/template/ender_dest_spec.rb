require "spec_helper"

describe Nfe::Template::EnderDest do
  let(:view) { described_class.new }

  context "rendering" do
    subject { view.render }

    it do
      xml("enderDest", subject).should == xml("enderDest")
    end
  end
end
