module Flight
  attr_accessor :airspeed_velocity
  def fly
    article = self.class.name.downcase =~ /^[aeiou].*/ ? "an" : "a"
    if @can_fly
      "I'm #{article} #{self.class.name.downcase}, I'm flying!"
    else
      "I'm #{article} #{self.class.name.downcase}, I can't fly for shit!"
    end
  end
end
