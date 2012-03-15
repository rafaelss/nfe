require "spec_helper"

describe Nfe::Template::Ipi do
  let(:view) { ipi }

  context "rendering" do
    subject { view.render }

    it do
      xml("IPI", subject).should == xml("IPI")
    end
  end
end
