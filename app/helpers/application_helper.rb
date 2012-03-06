module ApplicationHelper
def admins_only(&block)
block.call if current_user.try(:admin?)
nil
end


  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Ticketee").join(" - ") unless parts.empty?
      end
    end
  end
end


