require "spec_helper"

describe Nfe::Template::Root do
  let(:view) { root }

  before do
    view.inf_nfe.ide.should_receive(:c_nf).any_number_of_times.and_return("00300000")
  end

  context "rendering" do
    subject { view.render }

    it do
      xml(false, subject).should == xml(false)
    end
  end
end
