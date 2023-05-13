require "test_helper"

<<<<<<< HEAD:test/controllers/publications_controller_test.rb
class PublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get publications_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_url
    assert_response :success
  end

  test "should create publication" do
    assert_difference("Publication.count") do
      post publications_url, params: { publication: { class_id: @publication.class_id, contents: @publication.contents, description: @publication.description, duration: @publication.duration, likes_number: @publication.likes_number, modality: @publication.modality, price: @publication.price, user_id: @publication.user_id } }
    end

    assert_redirected_to publication_url(Publication.last)
  end

  test "should show publication" do
    get publication_url(@publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_url(@publication)
    assert_response :success
  end

  test "should update publication" do
    patch publication_url(@publication), params: { publication: { class_id: @publication.class_id, contents: @publication.contents, description: @publication.description, duration: @publication.duration, likes_number: @publication.likes_number, modality: @publication.modality, price: @publication.price, user_id: @publication.user_id } }
    assert_redirected_to publication_url(@publication)
  end

  test "should destroy publication" do
    assert_difference("Publication.count", -1) do
      delete publication_url(@publication)
    end

    assert_redirected_to publications_url
  end
=======
class ReviewsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
>>>>>>> ea4c21e9d704c366230e3ff3a54108cd0504b0e7:test/controllers/reviews_controller_test.rb
end
