require_relative '../Framework_Functions/env'

class TestClosedCaption < Test::Unit::TestCase

  def test_closed_caption
    driver(get_test_data(Video3))
    sleep 10 #TODO: handle ad instead of sleep

    # ----- Assert 1: verify default cc == off ------
    attribute1 = get_attribute_cc_btn
    assert_equal('false', attribute1, 'Test Fail') #TODO: move messages out to its own module

    # ----- Assert 2: verify cc == on ------
    closed_caption_btn.click
    attribute2 = get_attribute_cc_btn
    assert_equal('true', attribute2, 'Test Fail')

    # ----- Assert 3: verify cc == off ------
    closed_caption_btn.click
    attribute3 = get_attribute_cc_btn
    assert_equal('false', attribute3, 'Test Fail')

  end

end