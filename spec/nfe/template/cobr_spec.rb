require "spec_helper"

describe Nfe::Template::Cobr do
  let(:view) { cobr }

  context "rendering" do
    subject { view.render }

    it do
      xml("cobr", subject).should == xml("cobr")
    end
  end
end
