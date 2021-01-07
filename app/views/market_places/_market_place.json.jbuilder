# frozen_string_literal: true

json.extract! market_place, :id, :name, :address, :district, :postcode, :line, :pickup_type, :open_hour, :close_hour,
              :service_days, :created_at, :updated_at
json.url market_place_url(market_place, format: :json)
