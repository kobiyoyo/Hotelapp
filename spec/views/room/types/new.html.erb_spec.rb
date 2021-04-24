require 'rails_helper'

RSpec.describe 'room/types/new', type: :view do
  before(:each) do
    assign(:room_type, Room::Type.new(
                         name: 'MyString',
                         price: 1.5,
                         description: 'MyText'
                       ))
  end

  it 'renders new room_type form' do
    render

    assert_select 'form[action=?][method=?]', room_types_path, 'post' do
      assert_select 'input[name=?]', 'room_type[name]'

      assert_select 'input[name=?]', 'room_type[price]'

      assert_select 'textarea[name=?]', 'room_type[description]'
    end
  end
end
