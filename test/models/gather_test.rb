require 'test_helper'

class GatherTest < ActiveSupport::TestCase

#Testes de validação

  test "Is Gather being saved with all the required fields filled?" do
    gather = Gather.new
    assert_not gather.save, "Gather is being saved with empty required fields"
  end

end
