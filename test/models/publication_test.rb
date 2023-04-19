require "test_helper"

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save publication without description" do
    publication = @publication(:publication1)
    result = @publication.save
    assert_not result, "Saved an publication without a title"
  end
  
    
    
end
