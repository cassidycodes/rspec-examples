require 'rails_helper'

RSpec.describe "doors/show", type: :view do
  before(:each) do
    @door = assign(:door, Door.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
