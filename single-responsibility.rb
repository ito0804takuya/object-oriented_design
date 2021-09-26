# 自転車のギア
class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel = nil)
    @chainring = chainring # チェーンリングの歯数
    @cog = cog # コグの歯数
    @wheel = wheel # wheelオブジェクト
  end

  # ギアの比率(= ペダル1回転に対する車輪の回転数)
  def ratio
    chainring / cog.to_f # 浮動小数点へ変換
  end

  # ギアインチ(ギアと車輪の大きさが異なっても比較できる基準)
  def gear_inches
    # ギア比率 * タイヤの直径
    ratio * wheel.diameter
  end
end

# 自転車の車輪
class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim # リム(タイヤの内側の金属部分)の直径
    @tire = tire # タイヤの厚み
  end

  # タイヤの直径
  def diameter
    rim + (tire * 2) # 直径 = リム+タイヤの厚み
  end

  # タイヤの円周
  def circumference
    diameter * Math::PI # 直径 * π
  end
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(52, 11, @wheel).gear_inches

puts Gear.new(52, 11).ratio
