require 'calc'

# RSpec.describe "A calc" do
#   # before do 共通化
#   before(:example) do
#     @calc = Calc.new
#   end
#   it "2 + 3 = 5" do
#     # calc = Calc.new
#     expect(@calc.add(2, 3)).to eq(5)
#   end
#   #三角測量
#   it "13になったら成功" do
#     # calc =  Calc.new
#     expect(@calc.add(5, 8)).to eq(13)
#   end
# end

# RSpec.describe "A calc" do
#   describe "ノーマルモードの場合" do
#     it "given 2 and 3, return 5" do
#       calc = Calc.new
#       expect(calc.add(2, 3)).to eq(5)
#     end
#   end
#
#   describe "グラフモードの場合" do
#     it "drow graph" do
#     end
#   end
# end

# 書き方
RSpec.describe Calc do
  it{
    calc = Calc.new
    expect(calc.add(2, 3)).to eq(5)
    expect(calc.add(2, 3)).not_to eq(5) #not_to 〜と等しく無い
    expect(calc.add(2, 3)).to be true #trueの場合
    expect(calc.add(2, 3)).to be false #falseの場合
    expect(calc.add(2, 3)).to be < 10 #10より小さい
    #数値の範囲を指定する
    expect(calc.add(2, 3)).to be_between(1, 10).inclusive #1と10を含む
    #メソッドの有る、無しを調べる
    expect(calc).to respond_to(:add) #addというメソッドが存在するかどうかを検証
    expect(calc.add(2, 3)).to be true #trueの場合
    # ?を使う(empty? blank?とかも使える)
    expect(calc.add(2, 3).integer?).to be true #add(2, 3)はinteger型なのか検証

  }
  it "draws graph" # pending
end
