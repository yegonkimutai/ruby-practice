require_relative '../association'
require_relative '../classes'

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