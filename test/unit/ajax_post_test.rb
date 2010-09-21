require 'test_helper'

class AjaxPostTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AjaxPost.new.valid?
  end
end
