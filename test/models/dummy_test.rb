require "test_helper"

class DummyTest < ActiveSupport::TestCase
    test "Strings should be truthy" do
        hello = "Hello World"
        assert(hello)
    end
end