class Post < ActiveRecord::Base
	validates_presence_of :title
	has_many :comments
	
	def self.no_content
		where(:content => nil)
	end

	def abstract
		self.content[0..20]
	end
end
