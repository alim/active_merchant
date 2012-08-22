require 'test_helper'

class NelnetNotificationTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def setup
    @nelnet = Nelnet::Notification.new(http_raw_data)
  end

  def test_accessors
    assert @nelnet.complete?
    assert_equal "", @nelnet.status
    assert_equal "", @nelnet.transaction_id
    assert_equal "", @nelnet.item_id
    assert_equal "", @nelnet.gross
    assert_equal "", @nelnet.currency
    assert_equal "", @nelnet.received_at
    assert @nelnet.test?
  end

  def test_compositions
    assert_equal Money.new(3166, 'USD'), @nelnet.amount
  end

  # Replace with real successful acknowledgement code
  def test_acknowledgement

  end

  def test_send_acknowledgement
  end

  def test_respond_to_acknowledge
    assert @nelnet.respond_to?(:acknowledge)
  end

  private
  def http_raw_data
    ""
  end
end
