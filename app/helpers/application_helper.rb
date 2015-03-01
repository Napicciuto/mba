module ApplicationHelper
  def blog_img(image)
  	image.nil? ? 'blog-photo1.jpg' : image
  end

  def project_link_path(type_user)
    if either_user_signed_in?
      contacts_path
    else
      send("new_#{type_user}_registration_path")
    end
  end

  def either_user_signed_in?
    worker_signed_in? || company_signed_in?
  end

  def which_user
    worker_signed_in? ? 'worker' : 'company'
  end

  def preselected_option
    if either_user_signed_in?
      which_user == 'worker' ? 'MBA Applicant' : 'Post a project'
    else
      'Please select a subject...'
    end
  end
end
