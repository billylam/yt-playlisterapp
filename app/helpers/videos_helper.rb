module VideosHelper
  def embed(youtube_id, options = {})
    autoplay = "?autoplay=1" unless options[:autoplay].nil?
      raw %Q{<iframe title="YouTube video player" width="560" height="315" src="http://www.youtube.com/embed/#{ youtube_id }#{ autoplay }" frameborder="0" allowfullscreen></iframe>}
  end

  def get_thumbnail_for(youtube_id)
    "http://img.youtube.com/vi/#{ youtube_id }/default.jpg" if youtube_id
  end

  def parse_youtube_id(url_raw)
    if url_raw[/^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/]
      $2
    elsif url_raw.length == 11 #allow user to pass in video_id's themselves
      url_raw
    end
  end
end
