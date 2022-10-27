require "test_helper"

class PageTest < ActiveSupport::TestCase
  test "records" do
    assert_equal Recording.first(30), Paginate::Page.new(1, Recording.all).records
    assert_equal Recording.last(20), Paginate::Page.new(4, Recording.all).records
  end

  test "previous_param" do
    assert_equal 1, Paginate::Page.new(2, Recording.all).previous_param
  end

  test "next_param" do
    assert_equal 3, Paginate::Page.new(2, Recording.all).next_param
  end

  test "first?" do
    assert Paginate::Page.new(1, Recording.all).first?
    assert_not Paginate::Page.new(2, Recording.all).first?
  end

  test "last?" do
    assert Paginate::Page.new(4, Recording.all).last?
    assert_not Paginate::Page.new(3, Recording.all).last?
  end
end
