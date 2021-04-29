require 'rails_helper'

RSpec.describe 'reservations/edit', type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
                                          user: nil,
                                          bedroom: nil,
                                          adults: 1,
                                          children: 1
                                        ))
  end

  it 'renders the edit reservation form' do
    render

    assert_select 'form[action=?][method=?]', reservation_path(@reservation), 'post' do
      assert_select 'input[name=?]', 'reservation[user_id]'

      assert_select 'input[name=?]', 'reservation[bedroom_id]'

      assert_select 'input[name=?]', 'reservation[adults]'

      assert_select 'input[name=?]', 'reservation[children]'
    end
  end
end
