require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  #draft?
   test "draft? returns true for draft blog posts" do
     assert blog_posts(:draft).draft?
   end

   test "draft? returns false for published blog posts" do
     refute blog_posts(:published).draft?
   end

   test "draft? returns false for schedule blog posts" do
     refute blog_posts(:scheduled).draft?
   end

  #published?
   test "published? returns false for draft blog posts" do
     refute blog_posts(:draft).published?
   end
   test "published? returns true for published blog posts" do
     assert blog_posts(:published).published?
   end
   test "published? returns false for schuduled blog posts" do
     refute blog_posts(:scheduled).published?
   end

  #scheduled?
  test "scheduled? returns false for draft blog posts" do
    refute blog_posts(:draft).scheduled?
  end
  test "scheduled? returns true for published blog posts" do
    refute blog_posts(:published).scheduled?
  end
  test "scheduled? returns false for schuduled blog posts" do
    assert blog_posts(:scheduled).scheduled?
  end
end
