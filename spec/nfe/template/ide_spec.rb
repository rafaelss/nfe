require "spec_helper"

describe Nfe::Template::Ide do
  let(:view) { ide }

  context "rendering" do
    subject { view.render }

    it do
      xml("ide", subject).should == xml("ide")
    end
  end
end
