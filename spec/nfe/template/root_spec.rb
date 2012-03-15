require "spec_helper"

describe Nfe::Template::Root do
  let(:view) { root }

  context "rendering" do
    subject { view.render }

    it do
      xml(false, subject).should == xml(false)
    end
  end
end
