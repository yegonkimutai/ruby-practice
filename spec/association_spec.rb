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