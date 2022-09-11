module PostsHelper
  def is_owner?(post)
    post.identifier == request.remote_ip
  end
end
