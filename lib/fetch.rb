module UserAgents
  def fetch
    require 'nokogiri'
    require 'open-uri'
    require 'zlib'

    urls = [
        'http://www.useragentstring.com/pages/Chrome/',
        'http://www.useragentstring.com/pages/Firefox/',
        'http://www.useragentstring.com/pages/Internet%20Explorer/',
        'http://www.useragentstring.com/pages/Opera/',
        'http://www.useragentstring.com/pages/Safari/'
    ]

    agents = urls.inject([]) do |sum, url|
      puts "Requesting #{url}"
      doc  = Nokogiri::HTML(open(url))
      sum + doc.css('#liste ul li a').map{|link| link.content.strip }
    end

    Zlib::GzipWriter.open(File.expand_path('../useragents.dat', __FILE__)) do |gz|
      gz.write agents.join("\n")
    end
    puts "Fetch complete, got useragent count #{agents.length}!"
  end
end
