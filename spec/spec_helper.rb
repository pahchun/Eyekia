require 'coveralls'
require File.expand_path("../../config/environment", __FILE__)
Coveralls.wear!('rails')

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  def expect_no_page_reload
    page.evaluate_script "$(document.body).addClass('not-reloaded')"
    yield
    expect(page).to have_selector("body.not-reloaded")
  end
end
