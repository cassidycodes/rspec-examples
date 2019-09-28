require 'rails_helper'

RSpec.describe "phones/edit", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!())
  end

  it "renders the edit phone form" do
    render

    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do
    end
  end
end
