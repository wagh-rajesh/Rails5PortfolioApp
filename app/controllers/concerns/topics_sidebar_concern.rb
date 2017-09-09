module TopicsSidebarConcern

	extend ActiveSupport::Concern	

	included do
		before_action :set_sidebar_topics
	end	

  def set_sidebar_topics
    @sidebar_topics = Topic.with_blogs
  end

end  