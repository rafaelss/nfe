require "spec_helper"

describe Nfe::Template::Transp do
  let(:view) { transp }

  context "rendering" do
    subject { view.render }

    it do
      xml("transp", subject).should == xml("transp")
    end
  end
end
