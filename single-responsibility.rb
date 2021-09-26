# 自転車のギア
class Gear
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring = chainring # チェーンリングの歯数
    @cog = cog # コグの歯数
  end

  # ギアの比率(= ペダル1回転に対する車輪の回転数)
  def ratio
    chainring / cog.to_f # 浮動小数点へ変換
  end
end

puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio
