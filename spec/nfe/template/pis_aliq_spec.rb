require "spec_helper"

describe Nfe::Template::PisAliq do
  let(:view) { pis_aliq }

  context "rendering" do
    subject { view.render }

    it do
      xml("PISAliq", subject).should == xml("PISAliq")
    end
  end
end
