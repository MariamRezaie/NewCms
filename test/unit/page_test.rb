require 'test_helper'

class PageTest < ActiveSupport::TestCase
   #test "the truth" do
  #   assert true
 # end
 test "Page attribute shouldn't be empty" do
 	 page=Page.new
 	 assert page.invalid?
 	 assert page.errors[:title].any?
 	 assert page.errors[:permalink].any?
 	 assert page.errors[:body].any?
 	 
 end
 fixtures :pages
 test "The product title should be uniqe!" do
 	 	page=Page.new(:title => pages(:ruby).title,
 	 	:permalink =>  "www.rubyonrails.org",
 	 	:body => "bbb",
 	 	:created_at => 2012-03-12 ,
 	 	:update_at =>  2012-03-12 )
 	 	assert !page.save
 	 	assert_equal "has already been taken", page.errors[:title].join(';')
 end
end

















