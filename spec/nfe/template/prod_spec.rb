require "spec_helper"

describe Nfe::Template::Prod do
  let(:view) { prod }

  context "rendering" do
    subject { view.render }

    it do
      xml("prod", subject).should == xml("prod")
    end
  end
end
