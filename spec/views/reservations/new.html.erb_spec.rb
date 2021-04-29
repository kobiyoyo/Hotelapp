require 'rails_helper'

RSpec.describe 'reservations/new', type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
                           user: nil,
                           bedroom: nil,
                           adults: 1,
                           children: 1
                         ))
  end

  it 'renders new reservation form' do
    render

    assert_select 'form[action=?][method=?]', reservations_path, 'post' do
      assert_select 'input[name=?]', 'reservation[user_id]'

      assert_select 'input[name=?]', 'reservation[bedroom_id]'

      assert_select 'input[name=?]', 'reservation[adults]'

      assert_select 'input[name=?]', 'reservation[children]'
    end
  end
end
