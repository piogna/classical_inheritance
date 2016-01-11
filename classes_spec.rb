require "./classes"
describe "animals" do
  describe "mammals" do
    it 'should be warm blooded by default' do
      m = Mammal.new
      expect(m.warm_blooded?).to eq(true)
    end
  end

  describe "amphibians" do
    it "should be cold blooded by default" do
      a = Amphibian.new
      expect(a.warm_blooded?).to eq(false)
    end
  end

  describe "birds" do
    it "should have 2 legs by default" do
      b = Bird.new
      expect(b.num_legs).to eq(2)
    end

    it "should be warm blooded by default" do
      b = Bird.new
      expect(b.warm_blooded?).to eq(true)
    end
  end

  describe "primates" do
    it "should be warm blooded by default" do
      p = Primate.new
      expect(p.warm_blooded?).to eq(true)
    end

    it "should have 2 legs by default" do
      p = Primate.new
      expect(p.num_legs).to eq(2)
    end
  end

  describe "frogs" do
    it "should be slimy by default" do
      f = Frog.new
      expect(f.slimy?).to eq(true)
    end
  end

  describe "bats" do
    it "should be able to fly" do
      b = Bat.new
      expect(b.fly).to eq("I'm a bat, I'm flying!")
    end
  end

  describe "parrots" do
    it "should be able to fly" do
      p = Parrot.new
      expect(p.fly).to eq("I'm a parrot, I'm flying!")
    end
  end

  describe "ostriches" do
    it "should not be able to fly" do
      o = Ostriche.new
      expect(o.fly).to eq("I'm an ostriche, I can't fly for shit!")
    end
  end

  describe "chimpanzees" do
    it "should have opposable thumbs" do
      c = Chimpanzee.new
      expect(c.opposable_thumbs?).to eq(true)
    end
  end
end
