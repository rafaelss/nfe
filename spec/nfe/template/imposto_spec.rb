require "spec_helper"

describe Nfe::Template::Imposto do
  let(:view) { imposto }

  context "rendering" do
    subject { view.render }

    it do
      xml("imposto", subject).should == xml("imposto")
    end
  end
end
