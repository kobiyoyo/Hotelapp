require 'rails_helper'

RSpec.describe 'bedrooms/index', type: :view do
  before(:each) do
    assign(:bedrooms, [
             Bedroom.create!(
               status: 2,
               quantity: 3,
               room_type: nil
             ),
             Bedroom.create!(
               status: 2,
               quantity: 3,
               room_type: nil
             )
           ])
  end

  it 'renders a list of bedrooms' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
