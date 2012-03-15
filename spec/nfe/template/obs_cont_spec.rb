require "spec_helper"

describe Nfe::Template::ObsCont do
  let(:view) { obs_cont }

  context "rendering" do
    subject { view.render }

    it do
      xml("obsCont", subject).should == xml("obsCont")
    end
  end
end
