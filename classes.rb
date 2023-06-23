class Animal
  attr_accessor :owner, :visits

    def initialize(type, number_of_legs, name = "Unknown")
      @id = Random.rand(1..1000)
      @name = name
      @number_of_legs = number_of_legs
      @type = type
      @liked_food = NoFood.new()
      @visits = []
    end
  
    attr_reader :id, :type, :number_of_legs
  
    attr_accessor :name
  
    def speak
      "grrrr"
    end
  
    def remove_leg
      remover = Remover.new()
      @number_of_legs = remover.decrease(@number_of_legs)
    end
  
    def likes_food?(food)
      @liked_food.is_liked?(food)
    end

    def owner=(owner)
      @owner = owner
      owner.animals.push(self) unless owner.animals.include?(self)
    end
  end
  
  class Dog < Animal
    def initialize(color, name = "Unknown")
      super("dog", 4, name)
      @color = color
      @liked_food = DogFood.new()
    end
  
    def bring_a_stick
      "Here is your stick: ---------"
    end
  
    def speak
      "Woof woof"
    end
  end
  
  class Spider < Animal
    def initialize(web_strength_level, name = "Unknown")
      super("spider", 8, name)
      @web_strength_level = web_strength_level
      @liked_food = SpiderFood.new()
    end
  
    def make_a_web
      "www"
    end
  
    def speak
      "..."
    end
  end
  
  class Remover
    def decrease(number, step = 1)
      number -= step
    end
  end
  
  class NoFood
    def is_liked?(food)
     false
    end
  end
  
  class DogFood
    def is_liked?(food)
     ["meat", "vegetable", "fruit"].member?(food)
    end
  end
  
  class SpiderFood
    def is_liked?(food)
     ["insect", "bug"].member?(food)
    end
  end
  
  