require 'rspec'
require 'enumerable-chain'

describe "Enumerable::Chain" do
  it "can get a chain object" do
    chain = [1, 2, 3].<
    chain.should be_a(Enumerable::Chain)
    chain.>.should == [1, 2, 3]
  end

  it "can chain methods" do
    [1,2,3].<.to_s.length.>.should == [1, 1, 1]
  end

  it "can call method with args" do
    6.times.<.to_s(2).length.>.should == [1, 1, 2, 2, 3, 3]
  end

  it "can call method with block" do
    call_count = 0
    6.times.<.tap{call_count += 1}.>
    call_count.should == 6
  end
end
