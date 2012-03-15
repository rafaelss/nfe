require "spec_helper"

describe Nfe::Template::Pis do
  let(:view) { pis }

  context "rendering" do
    subject { view.render }

    it do
      xml("PIS", subject).should == xml("PIS")
    end
  end
end
