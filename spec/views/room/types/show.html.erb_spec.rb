require 'rails_helper'

RSpec.describe 'room/types/show', type: :view do
  before(:each) do
    @room_type = assign(:room_type, Room::Type.create!(
                                      name: 'Name',
                                      price: 2.5,
                                      description: 'MyText'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
  end
end
