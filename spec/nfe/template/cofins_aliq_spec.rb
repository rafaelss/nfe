require "spec_helper"

describe Nfe::Template::CofinsAliq do
  let(:view) { cofins_aliq }

  context "rendering" do
    subject { view.render }

    it { xml("COFINSAliq", subject).should == xml("COFINSAliq") }
  end
end
