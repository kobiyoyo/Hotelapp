require 'rails_helper'

RSpec.describe "bedrooms/edit", type: :view do
  before(:each) do
    @bedroom = assign(:bedroom, Bedroom.create!(
      status: 1,
      quantity: 1,
      room/type: nil
    ))
  end

  it "renders the edit bedroom form" do
    render

    assert_select "form[action=?][method=?]", bedroom_path(@bedroom), "post" do

      assert_select "input[name=?]", "bedroom[status]"

      assert_select "input[name=?]", "bedroom[quantity]"

      assert_select "input[name=?]", "bedroom[room/type_id]"
    end
  end
end
