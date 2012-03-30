require "spec_helper"

describe Nfe::Template::Root do
  let(:view) { root }

  before do
    view.inf_nfe.should_receive(:srand).and_return("00300000")
  end

  context "rendering" do
    subject { view.render }

    it do
      xml(false, subject).should == xml(false)
    end
  end
end
