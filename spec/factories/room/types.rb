FactoryBot.define do
  factory :room_type, class: 'Room::Type' do
    name { 'MyString' }
    price { 1.5 }
    description { 'MyText' }
  end
end
