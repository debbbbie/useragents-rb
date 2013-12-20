require 'useragent'
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
      doc.css('#liste ul li a').each do|link|
        str = link.content.strip
        agent = UserAgent.parse(str)
        case agent.browser
          when "Chrome"           ; sum.push(str) if agent.version && agent.version >= '15'
          when "Firefox"          ; sum.push(str) if agent.version && agent.version >= '9'
          when "Internet Explorer"; sum.push(str) if agent.version && agent.version >= '7'
          when "Opera"            ; sum.push(str) if agent.version && agent.version >= '10'
          when "Safari"           ; sum.push(str) if agent.version && agent.version >= '5'
        end
      end
      sum
    end

    Zlib::GzipWriter.open(File.expand_path('../useragents.dat', __FILE__)) do |gz|
      gz.write agents.join("\n")
    end
    puts "Fetch complete, got useragent count #{agents.length}!"
  end
end
