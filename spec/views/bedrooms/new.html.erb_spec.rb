require 'rails_helper'

RSpec.describe "bedrooms/new", type: :view do
  before(:each) do
    assign(:bedroom, Bedroom.new(
      status: 1,
      quantity: 1,
      room/type: nil
    ))
  end

  it "renders new bedroom form" do
    render

    assert_select "form[action=?][method=?]", bedrooms_path, "post" do

      assert_select "input[name=?]", "bedroom[status]"

      assert_select "input[name=?]", "bedroom[quantity]"

      assert_select "input[name=?]", "bedroom[room/type_id]"
    end
  end
end
