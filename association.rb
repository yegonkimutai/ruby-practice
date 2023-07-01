class Owner
    attr_reader :animals
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @animals = []
    end
  
    def add_animal(animal)
      @animals.push(animal)
      animal.owner = self
    end
  end
  

  class Vet
    attr_reader :visits
    attr_accessor :name, :address
  
    def initialize(name, address)
      @name = name
      @address = address
      @visits = []
    end
  end

  class Visit
    attr_reader :animal, :vet
    attr_accessor :date
  
    def initialize(date, animal, vet)
      @date = date
  
      @animal = animal
      animal.visits << self
  
      @vet = vet
      vet.visits << self
    end
  end

  puts owner_1 = Owner.new('George')
  puts owner_1.name
