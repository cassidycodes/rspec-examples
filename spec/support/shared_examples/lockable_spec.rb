# frozen_string_literal: true

RSpec.shared_examples 'Lockable' do
  subject { described_class.create }
  describe '#lock' do
    it 'sets locked_at to current time' do
      freeze_time do
        expect { subject.lock! }.to change { subject.locked_at }.from(nil).to(Time.now.utc)
      end
    end
  end

  describe '#locked?' do
    context 'it is not locked' do
      include_context 'locked_at'

      it 'returns true' do
        expect(subject.locked?).to be false
      end
    end

    context 'it is locked' do
      include_context 'locked_at' do
        let(:locked_at) { Time.now.utc }
      end

      it 'returns false' do
        expect(subject.locked?).to be true
      end
    end
  end
end
