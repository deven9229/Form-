module DiscussionsHelper

  def discussion_author(discussion)
   user_signed_in? && current_user.id == discussion.user.id
  end

  def discussion_author(reply)
    user_signed_in? && current_user.id == reply.user_id
  end
end
