require "spec_helper"

describe Nfe::Template::EnderEmit do
  let(:view) { ender_emit }

  context "rendering" do
    subject { view.render }

    it do
      xml("enderEmit", subject).should == xml("enderEmit")
    end
  end
end
