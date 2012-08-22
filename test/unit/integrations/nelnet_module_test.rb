require 'test_helper'

class NelnetModuleTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def test_notification_method
    assert_instance_of Nelnet::Notification, Nelnet.notification('name=cody')
  end
end
