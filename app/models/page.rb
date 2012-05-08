class Page < ActiveRecord::Base
	validates :title,:permalink,:body, :presence =>true
	validates :title, :uniqueness =>true
end
