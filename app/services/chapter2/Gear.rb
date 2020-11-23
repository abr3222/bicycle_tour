# ===========   # Page 20        ================
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end

end

puts Gear.new(52, 11, 26, 1.5).gear_inches
# -> 137.090909090909
puts Gear.new(52, 11, 24, 1.25).gear_inches
# -> 125.272727272727

=begin
                          ===========   # Page 19        ================
class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end
  def ratio
    chainring / cog.to_f
  end
end

# When Call from console or Some other Palace User this to Required
# or Put in the Application.rb file to To load at Run time
# require './app/services/chapter2/Gear.rb'

puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio
# -> 4.72727272727273
# -> 1.11111111111111

=end