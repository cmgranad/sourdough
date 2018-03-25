require_relative '../Framework_Functions/env'

class TestPlaySpeed < Test::Unit::TestCase
  def test_play_speed
    driver(get_test_data(Video1))
    sleep 10 #TODO: handle ad instead of sleeping
    main_video_element.click #pause the video first to make the menus visible

    sleep 5 #TODO: change this to a wait method
    # ----- assert 1: click on settings -----
    settings_btn.click
    sleep 5
    initial_speed_text = speed_menu_link.text
    assert initial_speed_text.include? 'Speed'
    speed_menu_link.click
    sleep 5

    # ----- assert 2: click on new speed and verify that it changed from before ------
    speed_75.click # click on .75 speed
    sleep 2
    new_speed_text = speed_menu_link.text
    assert_not_equal(initial_speed_text,new_speed_text,'Fail: It matches!') # TODO: move out to it's own module

  end
end