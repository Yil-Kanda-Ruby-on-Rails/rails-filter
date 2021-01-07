# frozen_string_literal: true

json.array! @market_places, partial: 'market_places/market_place', as: :market_place
