# these are the elements inside the web
# they have unique identifiers that selenium recognizes to create actions on

require_relative '../Framework_Functions/env'

def pause_play_video_btn
  @driver.find_element(xpath: "//button[@class='ytp-play-button ytp-button']")
end

def closed_caption_btn
  @driver.find_element(xpath: "//button[@class='ytp-subtitles-button ytp-button']")
end

def get_attribute_cc_btn
  return closed_caption_btn.attribute('aria-pressed')
end

def get_attribute_ytp_btn
  return pause_play_video_btn.attribute('aria-label')
end

def main_video_element
  @driver.find_element(id: 'movie_player')
end

def search_text_field
  @driver.find_element(xpath: "//input[@id='search']")
end

def search_icon
  @driver.find_element(xpath: "//button[@id='search-icon-legacy']")
end

def get_search_field_text
  return search_text_field.attribute('placeholder')
end

def get_result_unique_identifier
  return @driver.find_element(xpath: "//div[@id='sub-menu']/ytd-search-sub-menu-renderer/div[@id='container']/yt-formatted-string[@id='result-count']").text
end

def settings_btn
  @driver.find_element(xpath: "//button[@title='Settings']")
end

def speed_menu_link
  @driver.find_element(xpath: "//div[@class='ytp-popup ytp-settings-menu']/div[@class='ytp-panel']/div[@class='ytp-panel-menu']/div[2]")
end

def speed_75
  @driver.find_element(xpath: "//div[@id='ytp-id-17']/div/div[2]/div[3]/div")
end