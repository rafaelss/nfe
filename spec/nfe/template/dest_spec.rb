require "spec_helper"

describe Nfe::Template::Dest do
  let(:view) { dest }

  context "rendering" do
    subject { view.render }

    it do
      xml("dest", subject).should == xml("dest")
    end
  end
end
