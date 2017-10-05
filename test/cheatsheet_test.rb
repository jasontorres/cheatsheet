require 'test_helper'
require 'cheatsheet'

class CheatsheetTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Cheatsheet::VERSION
  end

  def test_client_success
    assert_match /Jollibee/, Cheatsheet::Client.fetch("ph-food-delivery")
  end

  def test_client_failure
    assert_raises(CheatSheetClientException) { Cheatsheet::Client.fetch("us-food-delivery") }
  end

  def test_client_invalid_result
  end

  def test_client_rendering
  end

end
