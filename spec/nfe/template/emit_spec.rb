require "spec_helper"

describe Nfe::Template::Emit do
  let(:view) { emit }

  context "rendering" do
    subject { view.render }

    it do
      xml("emit", subject).should == xml("emit")
    end
  end
end
