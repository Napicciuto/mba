module ApplicationHelper
  def blog_img(image)
  	image.nil? ? 'blog-photo1.jpg' : image
  end
end
