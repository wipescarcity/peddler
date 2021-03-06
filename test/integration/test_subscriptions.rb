# frozen_string_literal: true

require 'integration_helper'
require 'mws/subscriptions'

class TestSubscriptions < IntegrationTest
  def test_listing_registered_destinations
    clients.each do |client|
      res = client.list_registered_destinations(client.marketplace.id)
      refute_empty res.parse
    end
  end

  def test_listing_subscriptions
    clients.each do |client|
      res = client.list_subscriptions(client.marketplace.id)
      refute_empty res.parse
    end
  end

  def test_getting_service_status
    clients.each do |client|
      res = client.get_service_status
      refute_empty res.parse
    end
  end
end
