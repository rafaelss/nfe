require "spec_helper"

describe Nfe::Template::EnderDest do
  let(:view) { ender_dest }

  context "rendering" do
    subject { view.render }

    it do
      xml("enderDest", subject).should == xml("enderDest")
    end
  end
end
