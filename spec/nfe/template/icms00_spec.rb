require "spec_helper"

describe Nfe::Template::Icms00 do
  let(:view) { icms00 }

  context "rendering" do
    subject { view.render }

    it do
      xml("ICMS00", subject).should == xml("ICMS00")
    end
  end
end
