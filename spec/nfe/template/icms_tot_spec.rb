require "spec_helper"

describe Nfe::Template::IcmsTot do
  let(:view) { icms_tot }

  context "rendering" do
    subject { view.render }

    it do
      xml("ICMSTot", subject).should == xml("ICMSTot")
    end
  end
end
