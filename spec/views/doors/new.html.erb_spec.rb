require 'rails_helper'

RSpec.describe "doors/new", type: :view do
  before(:each) do
    assign(:door, Door.new())
  end

  it "renders new door form" do
    render

    assert_select "form[action=?][method=?]", doors_path, "post" do
    end
  end
end
