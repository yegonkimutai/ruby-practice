require_relative '../association'
require_relative '../classes'
require 'date'

describe Owner do
    let (:name) {'John'}
    let(:owner) {Owner.new(name)}
    let(:animal) {Animal.new('dog', 4, 'Bob')}

    context 'initialize' do
        it 'sets owner' do
            expect(owner.name).to eq(name)
        end

        it 'initilizes empty animals array' do
            expect(owner.animals).to be_empty
        end

        it 'should add animals' do
            owner.add_animal(animal)
            expect(animal.owner).to eq(owner)
        end
    end
end

describe Vet do
    let(:name) {'Brian'}
    let(:address) {'Nairobi'}
    let(:vet) {Vet.new(name, address)}

    context 'initialize' do
       it 'sets name' do
        expect(vet.name).to eq(name)
       end

       it 'sets address' do
        expect(vet.address).to eq(address)
       end

       it 'sets empty visits array' do
        expect(vet.visits).to be_empty
       end
    end
end

describe Visit do
    let(:date) {Date.new(2023, 7, 1)}
    let(:animal) {double("Animal", visits: [])}
    let(:vet) {double("Vet", visits: [])}

    subject{Visit.new(date, animal, vet)}

    context 'initialize' do
        it 'sets date' do
            expect(subject.date).to eq(date)
        end

        it 'add to animal visits' do
            expect(animal.visits).to include(subject)
        end

        it 'add to vet visits' do
            expect(vet.visits).to include(subject)
        end
    end
end