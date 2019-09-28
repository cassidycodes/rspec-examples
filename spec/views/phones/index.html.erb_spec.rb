require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(),
      Phone.create!()
    ])
  end

  it "renders a list of phones" do
    render
  end
end
