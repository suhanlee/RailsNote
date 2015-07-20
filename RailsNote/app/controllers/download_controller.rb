class DownloadController < ApplicationController

  def download
    file_path = params[:file_path]
    format = ".#{params[:format]}"
    local_path = Rails.root.parent.to_s.concat("/RailsNote_upload/uploads/").concat(file_path).concat(format)

    if File.exist? local_path then
      send_file local_path, type: 'image/jpeg', disposition: :inline
    else
      raise ActionController::RoutingError.new('File Not Found')
      # render :file => "#{Rails.root}/public/404.html",  status: 404
    end
  end

end
