require 'rails_helper'

RSpec.describe Phone, type: :model do
  it_behaves_like 'Lockable'
end
