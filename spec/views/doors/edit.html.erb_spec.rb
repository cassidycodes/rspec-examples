require 'rails_helper'

RSpec.describe "doors/edit", type: :view do
  before(:each) do
    @door = assign(:door, Door.create!())
  end

  it "renders the edit door form" do
    render

    assert_select "form[action=?][method=?]", door_path(@door), "post" do
    end
  end
end
