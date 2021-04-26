FactoryBot.define do
  factory :reservation do
    user { nil }
    bedroom { nil }
    check_in { "2021-04-27" }
    check_out { "2021-04-27" }
    adults { 1 }
    children { 1 }
  end
end
