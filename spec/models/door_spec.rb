require 'rails_helper'

RSpec.describe Door, type: :model do
  it_behaves_like 'Lockable'
end
