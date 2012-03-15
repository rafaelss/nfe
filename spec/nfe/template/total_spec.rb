require "spec_helper"

describe Nfe::Template::Total do
  let(:view) { total }

  context "rendering" do
    subject { view.render }

    it do
      xml("total", subject).should == xml("total")
    end
  end
end
