# 自転車のギア
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring # チェーンリングの歯数
    @cog = cog # コグの歯数
    @rim = rim # リム(タイヤの内側の金属部分)の直径
    @tire = tire # タイヤの厚み
  end

  # ギアの比率(= ペダル1回転に対する車輪の回転数)
  def ratio
    chainring / cog.to_f # 浮動小数点へ変換
  end

  # ギアインチ(ギアと車輪の大きさが異なっても比較できる)
  def gear_inches
    # ギア比率 * タイヤの直径(リム+タイヤの厚み)
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(52, 11).ratio # このままでは、初期値(引数)が足りないのでエラーになる
puts Gear.new(30, 27).ratio
