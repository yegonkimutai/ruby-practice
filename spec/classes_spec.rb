require_relative '../classes'

describe Animal do
    let(:type) { 'Dog' }
    let(:number_of_legs) { 4 }
    let(:name) { 'Tom' }
    let(:animal) { Animal.new(type, number_of_legs, name) }

    context 'initialize' do
        it 'sets type' do
            expect(animal.type).to eq(type)
        end

        it 'sets name' do
            expect(animal.name).to eq(name)
        end

        it 'sets type' do
            expect(animal.number_of_legs).to eq(number_of_legs)
        end
    end

    context 'methods' do
        it 'makes animal speak' do
            expect(animal.speak).to eq('grrrr')
        end

        it 'removes leg' do
            expect(animal.remove_leg).to eq(3)
        end

        it 'removes leg' do
            expect(animal.likes_food?('Bamboo')).to be(false)
        end
    end
end

describe Dog do
    let (:name) {'Bob'}
    let (:color) {'brown'}
    let(:dog) {Dog.new(color, name)}

    context 'initialize' do
        it 'sets name' do
            expect(dog.name).to eq(name)
        end

        it 'brings stick' do
            expect(dog.bring_a_stick).to eq("Here is your stick: ---------")
        end

        it 'speaks' do
            expect(dog.speak).to eq("Woof woof")
        end
    end
end