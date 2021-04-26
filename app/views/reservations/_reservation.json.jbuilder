json.extract! reservation, :id, :user_id, :bedroom_id, :check_in, :check_out, :adults, :children, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
