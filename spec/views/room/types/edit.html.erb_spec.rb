require 'rails_helper'

RSpec.describe 'room/types/edit', type: :view do
  before(:each) do
    @room_type = assign(:room_type, Room::Type.create!(
                                      name: 'MyString',
                                      price: 1.5,
                                      description: 'MyText'
                                    ))
  end

  it 'renders the edit room_type form' do
    render

    assert_select 'form[action=?][method=?]', room_type_path(@room_type), 'post' do
      assert_select 'input[name=?]', 'room_type[name]'

      assert_select 'input[name=?]', 'room_type[price]'

      assert_select 'textarea[name=?]', 'room_type[description]'
    end
  end
end
