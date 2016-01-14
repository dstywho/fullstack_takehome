class DashboardController < ApplicationController

  def index
    @histogram = Video.all.each_with_object({}) do |video, h|
      h.merge!({video.title => video.users.count})
    end
  end
end
