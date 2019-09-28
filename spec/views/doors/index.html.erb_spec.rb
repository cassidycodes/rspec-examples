require 'rails_helper'

RSpec.describe "doors/index", type: :view do
  before(:each) do
    assign(:doors, [
      Door.create!(),
      Door.create!()
    ])
  end

  it "renders a list of doors" do
    render
  end
end
