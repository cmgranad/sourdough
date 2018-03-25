require_relative '../Framework_Functions/env'
require 'test/unit/ui/console/testrunner'
require '../Testcases/test_closed_caption'
require '../Testcases/test_pause'
require '../Testcases/test_play_speed'
require '../Testcases/test_search'


class TS_MyTests
  def self.suite
    suite = Test::Unit::TestSuite.new('YouTube Tests')
    suite << TestClosedCaption.suite
    suite << TestPause.suite
    suite << TestSearch.suite
    suite << TestPlaySpeed.suite
    return suite
  end
end

Test::Unit::UI::Console::TestRunner.run(TS_MyTests)