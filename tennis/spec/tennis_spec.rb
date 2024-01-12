require 'tennis'

RSpec.describe Tennis, '#score' do
  context 'when initialize' do
    it 'should be love all' do
      expect(Tennis.new.score).to eq('love all')
    end
  end
end