module ApplicationHelper
	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    markdown.render(text)
  end

  def avatar_url(user, size)
    gravatar_id = Digest::MD5.hexdigest(user.to_s)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end

  include ActsAsTaggableOn::TagsHelper
  def tags_cloud
    @tags = Post.tag_counts_on(:tags)
  end
end
