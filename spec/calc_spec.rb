require 'calc'

RSpec.describe "A calc" do
  # before do 共通化
  before(:example) do
    @calc = Calc.new
  end
  it "2 + 3 = 5" do
    # calc = Calc.new
    expect(@calc.add(2, 3)).to eq(5)
  end
  #三角測量
  it "13になったら成功" do
    # calc =  Calc.new
    expect(@calc.add(5, 8)).to eq(13)
  end
end
