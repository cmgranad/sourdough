require_relative '../Framework_Functions/env'

class TestPause < Test::Unit::TestCase

  def test_pause

    driver(get_test_data(Video2))
    sleep 15 #TODO: handle ad instead of sleep

    # ----- assert 1: verify able to pause using main video screen ------
    main_video_element.click
    sleep 5
    attribute1 = get_attribute_ytp_btn
    assert_equal('Play', attribute1, "test fail") #TODO: move fail messages out of its own module

    # ----- assert 2: verify able to play using main video screen ------
    main_video_element.click
    sleep 5
    attribute2 = get_attribute_ytp_btn #get new attribute
    assert_equal('Pause', attribute2, "test fail") #TODO: move fail messages out of its own module

    # ----- assert 3: verify able to pause using pause/play button ------
    pause_play_video_btn.click
    sleep 5
    attribute3 = get_attribute_ytp_btn
    assert_equal('Play', attribute3, "test fail") #TODO: move fail messages out of its own module

    # ----- assert 4: verify able to play using pause/play button ------
    pause_play_video_btn.click
    sleep 5
    attribute4 = get_attribute_ytp_btn #get new attribute
    assert_equal('Pause', attribute4, "test fail") #TODO: move fail messages out of its own module

  end
end