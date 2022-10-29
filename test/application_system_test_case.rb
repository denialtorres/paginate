require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_firefox, screen_size: [1400, 1400]
end

Capybara.configure do |config|
  config.server = :puma, { Silen: true }
end
