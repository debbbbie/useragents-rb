module UserAgents
  def fetch
    require 'nokogiri'
    require 'open-uri'

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

    File.write(File.expand_path('../useragents.txt', __FILE__), agents.join("\n"))
    puts "Fetch complete, got useragent count #{agents.length}!"
  end
end
