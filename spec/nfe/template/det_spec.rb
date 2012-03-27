require "spec_helper"

describe Nfe::Template::Det do
  let(:view) { det(1) }

  context "rendering" do
    subject { view.render }

    it do
      xml("det", subject).should == xml("det")
    end
  end
end
