require File.expand_path('../../../spec_helper', __FILE__)
require File.expand_path('../fixtures/classes', __FILE__)

describe "Kernel#!~" do
  it "needs to be reviewed for spec completeness"

  it 'calls =~ internally negates the result' do
    obj = Object.new
    obj.should_receive(:=~).and_return(true)
    (obj !~ :foo).should == false
  end

  it 'can be overridden in subclasses' do
    obj = KernelSpecs::NotMatch.new
    (obj !~ :bar).should == :foo
  end
end
