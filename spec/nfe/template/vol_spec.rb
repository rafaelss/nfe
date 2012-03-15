require "spec_helper"

describe Nfe::Template::Vol do
  let(:view) { vol }

  context "rendering" do
    subject { view.render }

    it do
      xml("vol", subject).should == xml("vol")
    end
  end
end
