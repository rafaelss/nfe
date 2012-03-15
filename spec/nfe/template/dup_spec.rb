require "spec_helper"

describe Nfe::Template::Dup do
  let(:view) { dup }

  context "rendering" do
    subject { view.render }

    it do
      xml("dup", subject).should == xml("dup")
    end
  end
end
