require "spec_helper"

describe Nfe::Template::Fat do
  let(:view) { described_class.new }

  context "rendering" do
    subject { view.render }

    it do
      xml("fat", subject).should == xml("fat")
    end
  end
end
