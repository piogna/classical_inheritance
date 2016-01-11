require "./flight"

class Animal
  attr_accessor :num_legs
  attr_writer :warm_blooded, :has_tail

  def initialize(options = {})
    defaults = {
      num_legs: nil,
      warm_blooded: nil,
      has_tail: nil
    }

    options = defaults.merge(options)

    @num_legs = options[:num_legs]
    @warm_blooded = options[:warm_blooded]
    @tail = options[:tail]
  end

  def warm_blooded?
    @warm_blooded
  end

  def has_tail?
    @has_tail
  end
end

class Mammal < Animal
  attr_writer :furry

  def initialize(options = {})
    defaults = {
      warm_blooded: true,
      furry: nil
    }

    options = defaults.merge(options)
    @furry = options[:furry]
    super options
  end

  def furry?
    @furry
  end
end

class Amphibian < Animal
  attr_writer :slimy
  def initialize(options = {})
    defaults = {
      warm_blooded: false,
      slimy: nil
    }

    options = defaults.merge(options)

    @slimy = options[:slimy]

    super options
  end

  def slimy?
    @slimy
  end
end

class Bird < Animal
  include Flight
  attr_writer :can_fly
  def initialize(options = {})
    defaults = {
      num_legs: 2,
      warm_blooded: true,
      can_fly: nil
    }

    options = defaults.merge(options)

    @can_fly = options[:can_fly]

    super options
  end

  def can_fly?
    @can_fly
  end
end

class Primate < Mammal
  attr_writer :opposable_thumbs
  def initialize(options = {})
    defaults = {
      num_legs: 2,
      opposable_thumbs: nil
    }

    options = defaults.merge(options)

    @opposable_thumbs = options[:opposable_thumbs]

    super options
  end

  def opposable_thumbs?
    @opposable_thumbs
  end
end

class Frog < Amphibian
  def initialize(options = {})
    defaults = {
      slimy: true
    }

    options = defaults.merge(options)

    super options
  end
end

class Bat < Mammal
  include Flight
  attr_writer :can_fly
  def initialize(options = {})
    defaults = {
      can_fly: true
    }

    options = defaults.merge(options)

    @can_fly = options[:can_fly]

    super options
  end

  def can_fly?
    @can_fly
  end
end

class Parrot < Bird
  def initialize(options = {})
    defaults = {
      can_fly: true
    }

    options = defaults.merge(options)

    super options
  end
end

class Ostriche < Bird
  def initialize(options = {})
    defaults = {
      can_fly: false
    }

    options = defaults.merge(options)

    super options
  end
end

class Chimpanzee < Primate
  def initialize(options = {})
    defaults = {
      opposable_thumbs: true
    }

    options = defaults.merge(options)

    super options
  end
end
