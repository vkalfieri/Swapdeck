json.extract! listing, :id, :listing_id, :description, :card_number, :card_name, :card_set, :category_id, :subcategory_id, :delivery_id, :price, :trade_id, :user_id_id, :stripe_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
