require_relative '../Framework_Functions/env'

class TestSearch < Test::Unit::TestCase

def test_search

  driver(get_test_data(Main_URL)) #navigate to URL

  sleep 2
  # ----- assert 1: verify text field ------
  text = get_search_field_text
  assert_equal('Search', text, 'Test Fail') #TODO: move fail messages out to its own module

  # ----- assert 2: verify able to type on text field & verify search ----
  search_text_field.send_keys('EarnUp')
  search_icon.click
  sleep 2
  assert get_result_unique_identifier.include? 'results' # TODO: move expected texts out to its own module

  end
end