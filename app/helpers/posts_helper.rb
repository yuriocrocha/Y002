module PostsHelper
	def post_date(date)
		date.strftime("Posted on %b, %m %Y - %H:%M")
	end
end
