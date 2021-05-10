require 'rails_helper'

RSpec.describe 'reservations/show', type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
                                          user: nil,
                                          bedroom: nil,
                                          adults: 2,
                                          children: 3
                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
