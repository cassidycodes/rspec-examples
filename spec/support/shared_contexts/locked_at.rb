# frozen_string_literal: true

RSpec.shared_context 'locked_at' do
  let(:locked_at) { nil }
  subject { described_class.new(locked_at: locked_at) }
end
