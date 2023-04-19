require "test_helper"

class PublicationTest < ActiveSupport::TestCase
  
  test "should not save publication without description" do
    publication = @publication(:publication1)
    result = @publication.save
    assert_not result, "Saved a publication without a title"
  end
  
    
    
end
