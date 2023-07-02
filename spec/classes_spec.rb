require_relative '../classes'

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