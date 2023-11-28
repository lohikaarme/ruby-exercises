require './caesar_cipher'

describe '#caesar_cipher' do
  context 'when valid' do
    it 'shifts the inputs' do
      expect(subject.caesar_cipher('test', 1)).to eql('uftu')
    end
  end
end
