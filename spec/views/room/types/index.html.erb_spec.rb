require 'rails_helper'

RSpec.describe 'room/types/index', type: :view do
  before(:each) do
    assign(:room_types, [
             Room::Type.create!(
               name: 'Name',
               price: 2.5,
               description: 'MyText'
             ),
             Room::Type.create!(
               name: 'Name',
               price: 2.5,
               description: 'MyText'
             )
           ])
  end

  it 'renders a list of room/types' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.5.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
